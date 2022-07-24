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
  } from '@ant-design/pro-components';


export default class DataForm extends Component {
    render() {
        return (
            <div style={{   padding: 24, }}>
              <ProForm>
                <ProFormGroup label="选择类" style={{gap: '0 32px', }}>
                  <ProFormSelect
                    name="primary_asset_class"
                    label="Select primary asset class"
                    valueEnum={{
                      MoneyMarket: 'MoneyMarket',
                      FixedIncome: 'FixedIncome',
                      InterestRate: 'InterestRate',
                      ForeignExchange: 'ForeignExchange',
                      SecuritiesFinance: 'SecuritiesFinance',
                      ExchangeTraded: 'ExchangeTraded',
                      Commodity: 'Commodity',
                      Equity: 'Equity',
                      Credit: 'Credit',
                    }}
                    placeholder="Please select source system"
                    rules={[{ required: true, message: 'Please select source system!' }]}
                  />
                  <ProFormSelect
                    name="source_system"
                    label="Select source system"
                    valueEnum={{
                      Murex: 'Murex',
                      Sophis: 'Sophis',
                      T24: 'T24',
                      FEDS: 'FEDS',
                      Sabre: 'Sabre',
                      MX_FXCASH: 'MX_FXCASH',
                      BTS: 'BTS',
                      EQCONNECT: 'EQCONNECT',
                    }}
                    placeholder="Please select source system"
                    rules={[{ required: true, message: 'Please select source system!' }]}
                  />
                </ProFormGroup>
            </ProForm>
          </div>
        )
    }
}
