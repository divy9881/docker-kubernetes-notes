const express = require('express');
const app = express();

app.get('/', (req, res, next) => {
    console.log('Get request /');
    res.send('Get /');
});

app.listen(3000, () => {
    console.log('Listening on port 3000 at 127.0.0.1');
});
