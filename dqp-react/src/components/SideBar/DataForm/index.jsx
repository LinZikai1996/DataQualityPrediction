import React, { Component } from 'react'
import { Col, Row, Button, message } from 'antd';
import { PlusOutlined } from '@ant-design/icons';
import {
    ProForm,
    ProFormGroup,
    ProFormSelect,
    ProFormText,
    ModalForm
  } from '@ant-design/pro-components';

import ProduceSelect from './ProduceSelect';

function formatDate(time){
	var date = new Date(time);

	var year = date.getFullYear(),
		month = date.getMonth()+1,//月份是从0开始的
		day = date.getDate(),
		hour = date.getHours(),
		min = date.getMinutes(),
		sec = date.getSeconds();
	var newTime = year + '-' +
				(month < 10? '0' + month : month) + '-' +
				(day < 10? '0' + day : day) + ' ' +
				(hour < 10? '0' + hour : hour) + ':' +
				(min < 10? '0' + min : min) + ':' +
				(sec < 10? '0' + sec : sec);
	return newTime;			
}

const waitTime = (time = 100) => {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve(true);
    }, time);
  });
};

export default class DataForm extends Component {

  state = {
    tradeEventId: new Date().getTime(),
    createDate: formatDate(new Date().getTime()),
    primaryAssetClass: 'Commodity',
    originating_event_value_1: 'New'
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
          getAllProduceValue={this.getAllProduceValue}
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

  getAllOriginatingEventValue = () => {
    const stateObj = this.state
    let originating_event_value = stateObj.originating_event_value_1 + ":"
    for (let key of Object.keys(stateObj)) {
      if (key.startsWith("originating_event_value") && stateObj[key] !== ''){
        originating_event_value = originating_event_value + stateObj[key] + ":"
      }
    }
    this.setState({originating_event_value: originating_event_value.substring(0, originating_event_value.length - 1)})
  }

  render() {
    return (
        <div style={{ padding: 24, }}>
          <ProForm>
            <ProFormGroup>
              <ProFormText
                name="trade_event_id"
                disabled
                label="Trade event id"
                value={this.state.tradeEventId}
              />
              <ProFormText
                name="create_date"
                disabled
                label="Create date"
                value={this.state.createDate}
              />
            </ProFormGroup>
            <Row gutter={[16, 16]}>
              <Col span={8}>
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
                  initialValue="Commodity"
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
              </Col>
              <Col span={8}>
                <ProFormText
                  name="produce_value"
                  label="Produce value"
                  value={this.state.produce_value}
                  placeholder="produce value"
                  disabled
                />
                <ModalForm
                  title="Produce value"
                  trigger={
                    <Button type="primary">
                      <PlusOutlined />
                        Produce value
                    </Button>
                  }
                  autoFocusFirstInput
                  submitTimeout={2000}
                  onFinish={async (values) => {
                    await waitTime(2000);
                    message.success('ok');
                    return true;
                  }}
                >
                  {this.getComponentProduceValue(this.state.primaryAssetClass, 'produce_value_1', 'produce value 1')}
                  {this.getComponentProduceValue(this.state.produce_value_1, 'produce_value_2', 'produce value 2')}
                  {this.getComponentProduceValue(this.state.produce_value_2, 'produce_value_3', 'produce value 3')}
                  {this.getComponentProduceValue(this.state.produce_value_3, 'produce_value_4', 'produce value 4')}
                  {this.getComponentProduceValue(this.state.produce_value_4, 'produce_value_5', 'produce value 5')}
                  {this.getComponentProduceValue(this.state.produce_value_5, 'produce_value_6', 'produce value 6')}
                  {this.getComponentProduceValue(this.state.produce_value_6, 'produce_value_7', 'produce value 7')}
                  {this.getComponentProduceValue(this.state.produce_value_7, 'produce_value_8', 'produce value 8')}
                </ModalForm>
              </Col>
              <Col span={8}>
                <ProFormText
                  name="originating_event_value"
                  label="Originating event value"
                  value={this.state.originating_event_value}
                  placeholder="originating event value"
                  disabled
                />
                <ModalForm
                  title="Originating event value"
                  trigger={
                    <Button type="primary">
                      <PlusOutlined />
                        Originating event value
                    </Button>
                  }
                  autoFocusFirstInput
                  submitTimeout={2000}
                  onFinish={async (values) => {
                    await waitTime(2000);
                    message.success('ok');
                    return true;
                  }}
                >
                  <ProFormSelect
                    name="originating_event_value_1"
                    label="Originating event value 1"
                    valueEnum={
                      {
                        New: 'New',
                        Cancel: 'Cancel',
                      }
                    }
                    initialValue="New"
                    placeholder="Please select Originating event value 1"
                    fieldProps={{
                      onChange:(value) => {
                        this.setState({originating_event_value_1: value})
                        this.getAllOriginatingEventValue()
                      },
                    }}
                  />
                  <ProFormSelect
                    name="originating_event_value_2"
                    label="Originating event value 2"
                    valueEnum={
                      {
                        Amendment: 'Amendment',
                        Trade: 'Trade',
                        Termination: 'Termination',
                        Exercise: 'Exercise',
                        OptionEvent: 'OptionEvent',
                        Expiry: 'Expiry',
                      }
                    }
                    placeholder="Please select Originating event value 2"
                    fieldProps={{
                      onChange:(value) => {
                        this.setState({originating_event_value_2: value})
                        this.getAllOriginatingEventValue()
                      },
                    }}
                  />
                  <ProFormSelect
                    name="originating_event_value_3"
                    label="Originating event value 3"
                    valueEnum={
                      {
                        TradeAffirmed: 'TradeAffirmed',
                        'TradeAffirmed|CLIENT': 'TradeAffirmed|CLIENT',
                        'TradeAffirmed|MARKET_MULTIPLE_CLIENT': 'TradeAffirmed|MARKET_MULTIPLE_CLIENT',
                        'TradeAffirmed|MARKET_SINGLE_CLIENT': 'TradeAffirmed|MARKET_SINGLE_CLIENT',
                        ValuationReference: 'ValuationReference',
                        CollateralPosting: 'CollateralPosting',
                        ClearingCompletedNotification: 'ClearingCompletedNotification',
                        Retracted: 'Retracted',
                        Expiry: 'Expiry',
                      }
                    }
                    placeholder="Please select Originating event value 3"
                    fieldProps={{
                      onChange:(value) => {
                        this.setState({originating_event_value_3: value})
                        this.getAllOriginatingEventValue()
                      },
                    }}
                  />
                  <ProFormSelect
                    name="originating_event_value_4"
                    label="Originating event value 4"
                    valueEnum={
                      {
                        Validated: 'Validated',
                        BOCheck: 'BOCheck',
                        InitialState: 'InitialState',
                        BORejected: 'BORejected',
                        'Validated|CLIENT': 'Validated|CLIENT',
                      }
                    }
                    placeholder="Please select Originating event value 4"
                    fieldProps={{
                      onChange:(value) => {
                        this.setState({originating_event_value_4: value})
                        this.getAllOriginatingEventValue()
                      },
                    }}
                  />
                </ModalForm>
              </Col>
            </Row>
            
        </ProForm>
      </div>
    )
  }
}
