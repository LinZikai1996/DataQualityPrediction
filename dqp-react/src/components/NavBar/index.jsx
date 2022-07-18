import React, { Component } from 'react'
import { LaptopOutlined, NotificationOutlined, UserOutlined, HomeOutlined } from '@ant-design/icons';
import { Breadcrumb, Layout, Menu, Input, Icon } from 'antd';

import './index.css'

const { Header, Content, Sider } = Layout;

const { Search } = Input;

const items1 = ['1', '2', '3'].map((key) => ({
  key,
  label: `nav ${key}`,
}));

const items2 = [UserOutlined, LaptopOutlined, NotificationOutlined].map((icon, index) => {
  const key = String(index + 1);
  return {
    key: `sub${key}`,
    icon: React.createElement(icon),
    label: `subnav ${key}`,
    children: new Array(4).fill(null).map((_, j) => {
      const subKey = index * 4 + j + 1;
      return {
        key: subKey,
        label: `option${subKey}`,
      };
    }),
  };
});

export default class index extends Component {
  render() {
    return (
      <Layout>
        
        <Header className="header">
          <Menu theme="dark" mode="horizontal" defaultSelectedKeys={['1']} items={items1} />
          {/* <Search
            placeholder="input search text"
            onSearch={value => console.log(value)}
            style={{ width: 200 }}
          /> */}
        </Header>
        <Content style={{ padding: '0 50px' }}>
        <Breadcrumb>
          <Breadcrumb.Item href="">
            <HomeOutlined />
          </Breadcrumb.Item>
          <Breadcrumb.Item href="">
            <UserOutlined />
            <span>Application List</span>
          </Breadcrumb.Item>
          <Breadcrumb.Item>Application</Breadcrumb.Item>
        </Breadcrumb>
          <Layout className="site-layout-background" style={{ padding: '24px 0' }}>
            <Sider className="site-layout-background" width={200}>
              <Menu
                mode="inline"
                defaultSelectedKeys={['1']}
                defaultOpenKeys={['sub1']}
                style={{ height: '100%' }}
                items={items2}
              />
            </Sider>
            <Content style={{ padding: '0 24px', minHeight: 280 }}>Content</Content>
          </Layout>
        </Content>
        
      </Layout>       
    )
  }
}
