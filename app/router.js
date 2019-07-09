'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.post('/demo/user/query', controller.user.query);
  router.post('/demo/user/add', controller.user.add);
  router.post('/demo/user/update', controller.user.update);
  router.get('/new', controller.news.index);
};
