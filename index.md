---
layout: default
title: Will It Rain On My Parade?
---

# 🌧️ Will It Rain On My Parade?

Welcome!  
This page lets you explore precipitation predictions between two ZIP codes based on our trained time series model.  
Enter your **starting** and **destination ZIP codes** below to estimate the **average precipitation rate** and get a **recommendation score** (1–5).

---

## 🧭 Input Your Route

<form id="rain-form">
  <label for="start">Starting ZIP Code:</label><br>
  <input type="text" id="start" name="start" placeholder="e.g. 92122" required><br><br>

  <label for="end">Destination ZIP Code:</label><br>
  <input type="text" id="end" name="end" placeholder="e.g. 13210" required><br><br>

  <button type="submit">Calculate Precipitation Score</button>
</form>

---

## ☁️ Result

<div id="output">
  <p>Enter two ZIP codes above to see your result.</p>
</div>

---

### 💡 About the Scale

| Level | Recommendation | Description |
|:------:|:----------------|:-------------|
| 1 | 🚫 Not Recommended | Heavy or persistent precipitation |
| 2 | ⚠️ Caution | Moderate precipitation |
| 3 | 😐 Neutral | Light or uncertain conditions |
| 4 | 👍 Favorable | Mild weather, low precipitation |
| 5 | 🌞 Highly Recommended | Clear or minimal precipitation |

---

<script>
document.getElementById('rain-form').addEventListener('submit', function(event) {
  event.preventDefault();

  // Get ZIP inputs
  const start = document.getElementById('start').value.trim();
  const end = document.getElementById('end').value.trim();

  if (!start || !end) {
    document.getElementById('output').innerHTML = "<p>Please enter both ZIP codes.</p>";
    return;
  }

  // Simulated mean precipitation rate (replace with model output)
  const simulatedRate = Math.random() * 10; // mm/hr or similar

  // Determine severity 1–5
  let score;
  if (simulatedRate >= 8) score = 1;
  else if (simulatedRate >= 6) score = 2;
  else if (simulatedRate >= 4) score = 3;
  else if (simulatedRate >= 2) score = 4;
  else score = 5;

  // Display result
  document.getElementById('output').innerHTML = `
    <p><strong>Start:</strong> ${start}</p>
    <p><strong>End:</strong> ${end}</p>
    <p>Average Precipitation Rate: ${simulatedRate.toFixed(2)}</p>
    <h3>Recommendation Level: ${score} / 5</h3>
  `;
});
</script>