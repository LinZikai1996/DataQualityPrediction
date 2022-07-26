import React, { Component } from 'react'
import {
  ProFormSelect,
} from '@ant-design/pro-components';

export default class ProduceSelect extends Component {
  render() {
    const {assetClass, assetClassName, assetClassLabel, } = this.props
    return (
        <ProFormSelect
            name={assetClassName}
            label={"Select " + assetClassLabel}
            valueEnum={
              () => {
                switch (assetClass) {
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
                      TotalReturnSwap: 'TotalReturnSwap',
                    }
                  case 'Equity':
                    return {
                      Cash: 'Cash',
                      Option: 'Option',
                      Swap: 'Swap',
                      Other: 'Other',
                    }
                  case 'ExchangeTraded':
                    return {
                      Future: 'Future',
                      Option: 'Option',
                    }
                  case 'FixedIncome':
                    return {
                      Bond: 'Bond',
                    }
                  case 'ForeignExchange':
                    return {
                      ComplexExotic: 'ComplexExotic',
                      DualCurrencyDeposit: 'DualCurrencyDeposit',
                      Forward: 'Forward',
                      NDF: 'NDF',
                      NDO: 'NDO',
                      SimpleExotic: 'SimpleExotic',
                      VanillaOption: 'VanillaOption',
                    }
                  case 'InterestRate':
                    return {
                      CapFloor: 'CapFloor',
                      CrossCurrency: 'CrossCurrency',
                      Exotic: 'Exotic',
                      FRA: 'FRA',
                      IRSwap: 'IRSwap',
                      Option: 'Option',
                    }
                  case 'SecuritiesFinance':
                    return {
                      RepurchaseAgreement: 'RepurchaseAgreement',
                      SecuritiesLending: 'SecuritiesLending',
                    }
                  case 'Agricultural':
                    return {
                      Agricultural: 'Agricultural',
                    }
                  case 'Energy':
                    return {
                      Oil: 'Oil',
                    }
                  case 'Metals':
                    return {
                      NonPrecious: 'NonPrecious',
                      Precious: 'Precious',
                    }
                  case 'Exotic':
                    return {
                      Other: 'Other',
                    }
                  default:
                    break;
                }
              }
            }
            placeholder={"Please select " + assetClassLabel}
            rules={[{ required: true, message: "Please select " + assetClassLabel + " !" }]}
            fieldProps={{
            // 这里使用了select的onChange方法
            // 必须使用这样的写法来进行调用onChange方法
            onChange:(value) => {
                this.setState({primaryAssetClass: value})
            },
            }}
        />
    )
  }
}
