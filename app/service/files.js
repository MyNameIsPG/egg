'use strict';
const Service = require('egg').Service;

class FilesService extends Service {
  async add (data) {
    const results = await this.app.mysql.insert('tb_files', data);
    return results;
  }
}

module.exports = FilesService;
