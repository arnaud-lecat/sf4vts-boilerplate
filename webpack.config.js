var Encore = require('@symfony/webpack-encore');

Encore.setOutputPath('public/build/')
    .setPublicPath('/build')
    .cleanupOutputBeforeBuild()
    .addEntry('js/app', [
        './assets/js/app.js',
        './src/Vue/main.js'
    ])
    .addStyleEntry('css/app', './assets/scss/app.scss')
    .enableSourceMaps(!Encore.isProduction())
    .enableVersioning(Encore.isProduction())
    .enableSassLoader()
    .enablePostCssLoader()
    .enableVueLoader();

module.exports = Encore.getWebpackConfig();
