import React, { Component } from 'react'
import {
    ProForm,
    ProFormCheckbox,
    ProFormDigit,
    ProFormDigitRange,
    ProFormGroup,
    ProFormRadio,
    ProFormRate,
    ProFormSelect,
    ProFormSwitch,
    ProFormText,
    ProFormDependency,
  } from '@ant-design/pro-components';

export default class DataForm extends Component {

  state = {
    tradeEventId: new Date().getTime()
  }

  render() {
    return (
        <div style={{ padding: 24, }}>
          <ProForm>
            <ProFormGroup style={{gap: '0 32px', }}>
              <ProFormText
                name="trade_event_id"
                width="md"
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
              <ProFormSelect
                name="produce_value_1"
                label="Select produce value 1"
                valueEnum={
                  () => {
                    const primaryAssetClass = this.state.primaryAssetClass
                    switch (primaryAssetClass) {
                      case 'Commodity':
                        return {
                          Agricultural: 'Agricultural',
                          Energy: 'Energy',
                          Metals: 'Metals',
                        }
                      case 'Credit':
                        return {
                          Exotic: 'Exotic',
                          SingleName: 'SingleName',
                        }  
                      default:
                        break;
                    }
                  }
                }
                placeholder="Please select produce value 1"
                rules={[{ required: true, message: 'Please select produce value 1!' }]}
                fieldProps={{
                  // 这里使用了select的onChange方法
                  // 必须使用这样的写法来进行调用onChange方法
                  onChange:(value) => {
                    this.setState({primaryAssetClass: value})
                  },
                }}
              />
            </ProFormGroup>
        </ProForm>
      </div>
    )
  }
}
