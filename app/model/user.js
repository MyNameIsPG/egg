'use strict';
module.exports = app => {
  const {
    INTEGER,
    STRING,
    DATE,
  } = app.Sequelize;
  const User = app.model.define('tb_user', {
    uuid: {
      type: STRING,
      primaryKey: true,
      autoIncrement: true,
    },
    name: STRING,
    sex: INTEGER,
    phone: STRING,
    password: STRING,
    email: STRING,
    role_id: STRING,
    head_picture: STRING,
    flag: STRING,
    create_time: DATE,
    update_time: DATE,
  },
  {
    freezeTableName: true,
  });
  return User;
};