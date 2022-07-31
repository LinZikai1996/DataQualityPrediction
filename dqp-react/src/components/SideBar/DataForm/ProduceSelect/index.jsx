import React, { Component } from 'react'
import {
  ProFormSelect,
} from '@ant-design/pro-components';

export default class ProduceSelect extends Component {
  render() {
    const {assetClass, assetClassName, assetClassLabel, updateProduceSelectValue, getAllProduceValue} = this.props
    return (
        <ProFormSelect
            width='md'
            name= {assetClassName}
            label={"Please select " + assetClassLabel}
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
                      Softs: 'Softs',
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
                  case 'SingleName':
                    return {
                      Corporate: 'Corporate',
                      Sovereign: 'Sovereign',
                    }
                  case 'Option':
                    return {
                      PriceReturnBasicPerformance: 'PriceReturnBasicPerformance',
                      Commodity: 'Commodity',
                      InterestRate: 'InterestRate',
                      Physical: 'Physical',
                      DebtOption: 'DebtOption',
                      Swaption: 'Swaption',
                    }
                  case 'Swap':
                    return {
                      PriceReturnBasicPerformance: 'PriceReturnBasicPerformance',
                      Cash: 'Cash',
                    }
                  case 'Future':
                    return {
                      Commodity: 'Commodity',
                      FX: 'FX',
                      InterestRate: 'InterestRate',
                    }
                  case 'SimpleExotic':
                    return {
                      Barrier: 'Barrier',
                      Digital: 'Digital',
                    }
                  case 'CrossCurrency':
                    return {
                      Basis: 'Basis',
                      FixedFixed: 'FixedFixed',
                      FixedFloat: 'FixedFloat',
                    }
                  case 'IRSwap':
                    return {
                      Basis: 'Basis',
                      FixedFixed: 'FixedFixed',
                      FixedFloat: 'FixedFloat',
                      OIS: 'OIS',
                    }
                  case 'SpotFwd':
                    return {
                      Cash: 'Cash',
                      Physical: 'Physical',
                    }
                  case 'Softs':
                    return {
                      SpotFwd: 'SpotFwd',
                    }
                  default:
                    return {
                      TBA: 'TBA',
                    }
                }
              }
            }
            placeholder={"Please select " + assetClassLabel}
            rules={[{ message: "Please select " + assetClassLabel + " !" }]}
            fieldProps={{
            // 这里使用了select的onChange方法
            // 必须使用这样的写法来进行调用onChange方法
            onChange:(value) => {
              updateProduceSelectValue({[assetClassName]: value})
            },
            onBlur:() =>{
              getAllProduceValue()
            }
            }}
        />
    )
  }
}
