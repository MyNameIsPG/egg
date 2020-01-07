'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.post('/user/query', controller.user.query);
  router.post('/user/add', controller.user.add);
  router.post('/user/update', controller.user.update);
};
