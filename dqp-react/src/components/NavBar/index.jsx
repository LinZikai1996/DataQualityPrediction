import React, { Component } from 'react'
import { Layout, Input } from 'antd';

const { Header } = Layout;
const {Search} = Input;

export default class Navbar extends Component {
  render() {
    return (
      <Layout>
        <Header className="header">
          <Search
            placeholder="input search text"
            onSearch={value => console.log(value)}
            style={{ width: 250 , marginTop: 15, float: "right"}}
            enterButton
          />
        </Header>
      </Layout>       
    )
  }
}
