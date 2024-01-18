const express = require('express');
const cors = require('cors');
const path = require('path');
const fs = require('fs');
const { LoggerMiddleware } = require('./middleware');
const PORT = process.env.PORT || 8000;
const app = express();
app.use('/uploads', express.static(path.resolve(__dirname, 'uploads')));
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

const routes = require('./routes/routes');
app.use(LoggerMiddleware);
app.use('/', routes);

app.listen(PORT, () => {
	console.log('-----------------------------------------------');
	console.log(`Server running on http://localhost:${PORT} 😎`);
})