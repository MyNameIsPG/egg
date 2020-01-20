'use strict';
const Service = require('egg').Service;

class RoleService extends Service {

  buildTree (data) {
    const res = [];
    for (const item of data) {
      if (!item.parent) {
        item.children = getNode(item.uuid);
        res.push(item);
      }
    }
    function getNode (uuid) {
      const node = [];
      for (const item of data) {
        if (item.parent === uuid) {
          item.children = getNode(item.uuid);
          node.push(item);
        }
      }
      if (node.length === 0) return;
      return node;
    }
    return res;
  }

  async queryTree (data) {
    const list = await this.app.mysql.query(`select * from tb_menu WHERE flag = ${data.flag} ORDER BY sort ASC, create_time DESC`)
    let result = this.buildTree(list)
    return result
  }

  async queryAll (data) {
    const totalNum = await this.app.mysql.query('SELECT COUNT(*) from tb_menu');
    const name = data.name ? `AND name like "%${data.name}%"` : ''
    const list = await this.app.mysql.query(`select * from tb_menu WHERE flag = ${data.flag} ${name} ORDER BY sort ASC, create_time DESC LIMIT ${data.pageNum * data.pageSize}, ${data.pageSize}`)
    console.log('----tb_menu----  ' + `select * from tb_menu WHERE flag = ${data.flag} ${name} ORDER BY sort ASC, create_time DESC LIMIT ${data.pageNum * data.pageSize}, ${data.pageSize}`)
    const result = {
      list,
      total: totalNum[0]["COUNT(*)"],
      pageSize: data.pageSize,
      pageNum: data.pageNum
    }
    return result
  }
  async query (data) {
    return await this.app.mysql.select('tb_menu', {
      where: { flag: 1 }, // WHERE 条件
      orders: [['create_time', 'desc']] // 排序方式
    });
  }
  async add (data) {
    return await this.app.mysql.insert('tb_menu', data);
  }
  async update (data, options) {
    return await this.app.mysql.update('tb_menu', data, options);
  }
  async queryOne (options) {
    return await this.app.mysql.get('tb_menu', options);
  }
}

module.exports = RoleService;