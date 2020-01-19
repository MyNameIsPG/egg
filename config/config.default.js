/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // 项目名称
  config.project = '/shop';
  // 附件地址
  config.filePath = 'F:/work/tup/';
  // 附件预览地址
  config.fileUrl = 'http://localhost:8060/tup/'


  config.cluster = {
    listen: {
      port: 8088,
      //hostname: '172.18.1.103'
    }
  }

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1561088108735_8265';
  // 上传文件插件配置
  config.multipart = {
    mode: 'file'
  };
  // add your middleware config here
  config.middleware = [
    'notfoundHandler'
  ];
  // 数据库配置
  config.mysql = {
    client: {
      // host
      host: 'localhost',
      // 端口号
      port: '3306',
      // 用户名
      user: 'root',
      // 密码
      password: '123456',
      // 数据库名
      database: 'shopping',
      timezone: '+08:00',
      underscored: true
    },
    // 是否加载到 app 上，默认开启
    app: true,
    // 是否加载到 agent 上，默认关闭
    agent: false,
  };

  config.security = {
    xframe: {
      enable: false,
    },
    csrf: {
      enable: false,
      ignore: '/demo/*/*',
    },
  };

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  return {
    ...config,
    ...userConfig,
  };
};
