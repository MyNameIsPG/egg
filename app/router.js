'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  const project = app.config.project;
  router.post(project + '/user/login', controller.user.login);
  router.post(project + '/user/query', controller.user.query);
  router.post(project + '/user/queryAll', controller.user.queryAll);
  router.post(project + '/user/queryOne', controller.user.queryOne);
  router.post(project + '/user/add', controller.user.add);
  router.post(project + '/user/update', controller.user.update);

  router.post(project + '/role/query', controller.roles.query);
  router.post(project + '/role/queryAll', controller.roles.queryAll);
  router.post(project + '/role/queryOne', controller.roles.queryOne);
  router.post(project + '/role/add', controller.roles.add);
  router.post(project + '/role/update', controller.roles.update);

  router.post(project + '/menu/query', controller.menu.query);
  router.post(project + '/menu/queryAll', controller.menu.queryAll);
  router.post(project + '/menu/queryOne', controller.menu.queryOne);
  router.post(project + '/menu/add', controller.menu.add);
  router.post(project + '/menu/update', controller.menu.update);
  router.post(project + '/menu/tree', controller.menu.tree);

  router.post(project + '/upload', controller.files.index);
};
