const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
const pool = new Pool({
  host: process.env.DB_HOST || 'database',
  port: 5432,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

app.use(cors());
app.use(express.json());

app.get('/health', (req, res) => res.json({ status: 'ok' }));

app.get('/api/oems', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM master_oem_registry ORDER BY reliability_score DESC LIMIT 100');
    res.json({ data: result.rows, total: result.rows.length });
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.listen(5000, '0.0.0.0', () => console.log('API running on port 5000'));
