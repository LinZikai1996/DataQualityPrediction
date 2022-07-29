import React, { Component } from 'react'
import {
    ProForm,
    ProFormGroup,
    ProFormSelect,
    ProFormText,
  } from '@ant-design/pro-components';

import ProduceSelect from './ProduceSelect';

export default class DataForm extends Component {

  state = {
    tradeEventId: new Date().getTime()
  }

  updateProduceSelectValue = (stateObj) => {
    this.setState(stateObj)
  }

  getComponentProduceValue = (assetClass, assetClassName, assetClassLabel) => {
    console.debug("assetClass is " + assetClass)
    if (assetClass !== undefined && assetClass !== 'TBA'){
      return (
        <ProduceSelect 
          assetClass={assetClass}
          assetClassName={assetClassName}
          assetClassLabel={assetClassLabel}
          updateProduceSelectValue={this.updateProduceSelectValue}
        />
      )
    } else {
      return null
    }
  }

  getAllProduceValue = () => {
    const stateObj = this.state
    let produce_value = stateObj.primaryAssetClass + ":"
    for (let key of Object.keys(stateObj)) {
      if (key.startsWith("produce_value_") && stateObj[key] !== 'TBA'){
        produce_value = produce_value + stateObj[key] + ":"
      }
    }
    this.setState({produce_value: produce_value.substring(0, produce_value.length - 1)})
  }

  render() {
    return (
        <div style={{ padding: 24, }}>
          <ProForm>
            <ProFormGroup style={{gap: '0 32px', }}>
              <ProFormText
                name="trade_event_id"
                width="lg"
                disabled
                label="Trade event id"
                value={this.state.tradeEventId}
              />
            </ProFormGroup>
            <ProFormGroup style={{gap: '0 32px', }}>
              <ProFormSelect
                name="primary_asset_class"
                label="Select primary asset class"
                valueEnum={
                    {
                      Commodity: 'Commodity',
                      Credit: 'Credit',
                      Equity: 'Equity',
                      ExchangeTraded: 'ExchangeTraded',
                      FixedIncome: 'FixedIncome',
                      ForeignExchange: 'ForeignExchange',
                      InterestRate: 'InterestRate',
                      MoneyMarket: 'MoneyMarket',
                      SecuritiesFinance: 'SecuritiesFinance',
                  }
                }
                placeholder="Please select primary asset class"
                rules={[{ required: true, message: 'Please select primary asset class!' }]}
                fieldProps={{
                  // 这里使用了select的onChange方法
                  // 必须使用这样的写法来进行调用onChange方法
                  onChange:(value) => {
                    this.setState({primaryAssetClass: value})
                  },
                }}
              />
              {this.getComponentProduceValue(this.state.primaryAssetClass, 'produce_value_1', 'produce value 1')}
              {this.getComponentProduceValue(this.state.produce_value_1, 'produce_value_2', 'produce value 2')}
              {this.getComponentProduceValue(this.state.produce_value_2, 'produce_value_3', 'produce value 3')}
              {this.getComponentProduceValue(this.state.produce_value_3, 'produce_value_4', 'produce value 4')}
              {this.getComponentProduceValue(this.state.produce_value_4, 'produce_value_5', 'produce value 5')}
              {this.getComponentProduceValue(this.state.produce_value_5, 'produce_value_6', 'produce value 6')}
            </ProFormGroup>
            <ProFormGroup>
              <ProFormText           
                name="produce_value"
                label="Produce value"
                value={this.state.produce_value}
                placeholder="produce value"
              />
            </ProFormGroup>
        </ProForm>
      </div>
    )
  }
}
