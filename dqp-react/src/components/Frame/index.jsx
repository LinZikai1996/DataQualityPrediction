import React, { Component } from 'react'
import { Layout } from 'antd';


import NarBar from '../NavBar'
import SideBar from '../SideBar';

const { Content } = Layout;


export default class Frame extends Component {

  render() {
    return (
      <Layout>
        <NarBar />
        <Content style={{ padding: '0 50px' }}>
          <SideBar />
        </Content>
      </Layout>
    )
  }
}
