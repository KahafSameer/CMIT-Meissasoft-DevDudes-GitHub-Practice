________________________________________
🚀 AWS Lambda + API Gateway (Node.js)
Complete Notes (Beginner → Practical)
________________________________________
🎯 PROJECT GOAL (Sab se pehle samjho)
Is project ka goal ye hai:
•	AWS Lambda function banana (Node.js)
•	Us Lambda ko API Gateway ke through expose karna
•	Frontend se POST request bhejna
•	Lambda payload receive kare
•	Data process kare
•	Success ya Error response return kare
•	Frontend me response show ho
👉 Ye complete serverless backend example hai (No EC2, No server).
________________________________________
🧠 OVERALL FLOW (Big Picture)
Frontend (Next.js)
      |
      |  POST Request (JSON)
      ↓
API Gateway (REST API)
      |
      ↓
AWS Lambda (Node.js)
      |
      ↓
Response (JSON)
      |
      ↓
Frontend UI
________________________________________
🧩 STEP 1: Create Lambda Function
1.	AWS Console → Lambda
2.	Click Create function
3.	Select Author from scratch
4.	Give:
o	Function name (example: contactFormHandler)
o	Runtime: Node.js 20.x
5.	Permissions:
o	Create new role with basic Lambda permissions
6.	Click Create function
👉 Ab Lambda ka backend container ready hai
Ab hume logic likhni hai.
________________________________________
🧩 STEP 2: Backend Logic (Lambda Code)
📁 File name
index.js
________________________________________
✅ FULLY COMMENTED LAMBDA CODE (Node.js)
// Lambda ka main handler function
// Ye function API Gateway se request receive karta hai
exports.handler = async (event) => {

  // Default name set kar rahe hain
  // Agar frontend se name na aaye to ye use hoga
  let name = "User";

  try {
    // event.body frontend se aane wala data hota hai
    // Kabhi string hota hai, kabhi object
    // Is liye pehle check kar rahe hain
    const body =
      typeof event.body === 'string'
        ? JSON.parse(event.body) // agar string ho to JSON parse karo
        : event.body;            // warna direct use karo

    // Agar frontend se name aya hai to use kar lo
    // warna "User" hi rehne do
    name = body.name || "User";

  } catch (error) {
    // Agar JSON parse fail ho jaye
    console.error("Error parsing data:", error);

    // Client ko error response bhejna
    return {
      statusCode: 400,
      body: JSON.stringify({
        message: "Invalid request body"
      })
    };
  }

  // Agar sab kuch theek raha to success response
  return {
    statusCode: 200,
    headers: {
      "Content-Type": "application/json",

      // CORS header
      // Iska matlab: koi bhi frontend is API ko call kar sakta hai
      "Access-Control-Allow-Origin": "*",
    },
    body: JSON.stringify({
      message: `Thanks ${name}, we received your message!`
    })
  };
};
________________________________________
🧠 Code ka Purpose (Simple Words)
•	event.body → frontend se data
•	JSON.parse() → string ko object banana
•	try/catch → error handling
•	statusCode 200 → success
•	statusCode 400 → client error
•	Access-Control-Allow-Origin → frontend access allow
________________________________________
🧩 STEP 3: Deploy Lambda Code
•	Code paste karo
•	Deploy button click karo
•	Lambda ready ✅
________________________________________
🧩 STEP 4: API Gateway Trigger Add Karna
1.	Lambda → Configuration
2.	Go to Triggers
3.	Click Add trigger
4.	Select API Gateway
5.	Settings:
o	Create a new API
o	API type: REST API
o	Security: Open
o	Give any API name
6.	Click Add
👉 Lambda + API Gateway connect ho gaye
________________________________________
🧩 STEP 5: API Gateway Configuration
1.	Trigger ke API name pe click karo
2.	API Gateway Console open ho jayega
________________________________________
📌 Resource Create Karna
•	Select root path /
•	Click Create Resource
•	Resource name: test-post
•	✅ Enable CORS
________________________________________
🧠 CORS (Easy & Clear Explanation)
Problem:
Browser ka rule hota hai:
One website cannot talk to another website directly
Is rule ko kehte hain:
Same-Origin Policy
________________________________________
Solution:
CORS (Cross-Origin Resource Sharing)
Server browser ko bolta hai:
“Is frontend ko meri API use karne ki ijazat hai”
Example header:
Access-Control-Allow-Origin: https://frontend.com
________________________________________
Easy Points:
•	❌ Without CORS → request block
•	✅ With CORS → request allowed
•	🔥 React / Next.js frontend + AWS backend ke liye MUST
________________________________________
🧩 STEP 6: POST Method Create Karna
•	Resource select karo (/test-post)
•	Click Create Method
•	Select POST
•	Enable Lambda Proxy Integration
•	Lambda function select karo
•	Save
________________________________________
Enable CORS (POST + OPTIONS)
•	Select API
•	Click Enable CORS
•	Check:
o	OPTIONS
o	POST
•	Save
________________________________________
🧩 STEP 7: Deploy API
•	Click Deploy API
•	Default settings use karo
•	Deploy
👉 Ab API URL generate ho jayega
Trigger section me 2 triggers dikhain ge
👉 Second trigger ka URL copy karo
________________________________________
🧩 STEP 8: Frontend Test (Next.js)
📄 page.tsx
'use client';

import { useState } from 'react';

export default function ContactPage() {
  const [name, setName] = useState('');
  const [response, setResponse] = useState('');

  const handleSubmit = async (e: any) => {
    e.preventDefault();

    // API Gateway POST request
    const res = await fetch(
      'https://YOUR_API_URL_HERE',
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name })
      }
    );

    const data = await res.json();
    setResponse(data.message);
  };

  return (
    <div style={{ padding: 20 }}>
      <h1>Contact Us</h1>

      <form onSubmit={handleSubmit}>
        <input
          type="text"
          placeholder="Enter your name"
          value={name}
          onChange={(e) => setName(e.target.value)}
          required
        />
        <button type="submit">Send</button>
      </form>

      {response && <p>{response}</p>}
    </div>
  );
}
________________________________________
✅ FINAL RESULT
•	User name enter kare
•	POST request API Gateway ko jaye
•	Lambda process kare
•	Response aaye:
Thanks Kafi, we received your message!
________________________________________
🎓 WHAT YOU LEARNED (Important for Interview)
✔ Serverless architecture
✔ AWS Lambda basics
✔ API Gateway REST API
✔ POST request handling
✔ CORS concept
✔ Frontend + Backend integration
✔ Error handling
✔ Real-world flow
________________________________________
Agar chaho next step me:
•	🔐 Authentication (JWT)
•	📦 Environment variables
•	📊 Logging (CloudWatch)
•	🧪 Postman testing
•	🚀 Production best practices
Bas bolo Kafi 😎

