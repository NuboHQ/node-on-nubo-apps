const app = require('express')();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('<h1>Node on Nubo Apps</h1>');
});

app.listen(PORT, () => console.log(`> Ready on http://localhost:${PORT}`));
