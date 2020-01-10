'use strict';
const Service = require('egg').Service;

class FilesService extends Service {
  async add (data) {
    return await this.app.mysql.insert('tb_files', data);
  }
}

module.exports = FilesService;
