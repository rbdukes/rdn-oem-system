import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [oems, setOems] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios.get('/api/oems')
      .then(res => { setOems(res.data.data); setLoading(false); })
      .catch(err => { console.error(err); setLoading(false); });
  }, []);

  return (
    <div className="App">
      <header><h1>RDN Supplies AI</h1></header>
      <main>
        {loading ? <p>Loading...</p> : (
          <table>
            <thead><tr><th>Company</th><th>Country</th><th>Score</th></tr></thead>
            <tbody>
              {oems.map(oem => (
                <tr key={oem.id}>
                  <td>{oem.company_name}</td>
                  <td>{oem.hq_country}</td>
                  <td>{oem.reliability_score}</td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </main>
    </div>
  );
}

export default App;
