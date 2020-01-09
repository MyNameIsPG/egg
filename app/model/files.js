'use strict';
module.exports = app => {
  const {
    INTEGER,
    STRING,
    DATE,
    DOUBLE
  } = app.Sequelize;
  const Files = app.model.define('tb_files', {
    uuid: {
      type: STRING,
      primaryKey: true,
      autoIncrement: true,
    },
    owner_id: STRING,
    create_id: STRING,
    name: STRING,
    path: STRING,
    status: INTEGER,
    size: DOUBLE,
    create_time: DATE,
  },
  {
    freezeTableName: true,
  });
  return Files;
};
