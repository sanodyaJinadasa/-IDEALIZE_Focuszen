# 🌿 FocusZen – Your Digital Study Companion

**FocusZen** is a full-featured productivity and learning support platform built to help students stay focused, organized, and motivated. With smart study tools, a calming UI, and intelligent features like time tracking, reminders, motivational AI, and community engagement — FocusZen is your go-to digital study companion.

---

## ✨ Features

- ✅ **To-Do Task Manager** – Track and manage study tasks efficiently  
- ⏰ **Study Time Logging & Progress Reports**  
- 🔔 **Email Reminders** for study sessions and goals  
- 🤖 **AI-Powered Motivation** using Flask + OpenAI  
- 💬 **Study Community Q&A** – Ask and answer questions with peers  
- 🧠 **Chatbot Assistant** – 24/7 intelligent support  
- 🥇 **Gamification** – Challenges, rewards, and Top Focuzers leaderboard  
- 🎶 **Smart Media Recommendations** – Based on user focus patterns  
- 📚 **Study Articles & Tips**  
- 😴 **Sleep Suggestions** – Based on late-night study patterns  
- 📩 **Feedback System** – Share ideas and improve FocusZen  

---

## 🛠️ Tech Stack

- **Backend:** Laravel (PHP)  
- **Frontend:** HTML, CSS, JS (Blade + Bootstrap)  
- **AI Integration:** Python (Flask) with OpenAI  
- **Database:** MySQL  
- **Other Tools:** Font Awesome, Chart.js, Mail Notifications

---

## 🚀 Getting Started

### 📦 Clone the Repository

```bash
git clone https://github.com/sanodyaJinadasa/-IDEALIZE_Focuszen.git
cd focuszen
```

---

### ⚙️ Laravel Setup

```bash
composer install
cp .env.example .env
php artisan key:generate
php artisan migrate
php artisan serve
```

> 🔐 **Note:** Fill in your database credentials and API keys in the `.env` file.

---

### 🤖 Flask AI Setup (Motivational Engine)

```bash
cd Flask

# Create virtual environment
python -m venv venv

# Activate it
venv\Scripts\activate       # Windows
# or
source venv/bin/activate    # macOS/Linux

# Install Python dependencies
pip install -r requirements.txt

# Start Flask server
python app.py
```

This will run the motivational engine at:  
`http://127.0.0.1:5000/motivate?minutes=45`

---

## 🔐 API Key Security

> ⚠️ **Important Security Note**

An OpenAI API key was **accidentally committed earlier** and has since been **revoked and removed**.  
The current repository is safe and `.env` is correctly **excluded** from version control.

### ✅ API Key Best Practices

- Store secrets like `OPENAI_API_KEY` inside your `.env` file.
- Never commit `.env` to GitHub – it should always be in `.gitignore`.
- Use `.env.example` to show required variables (without real values).

---

## 📁 Project Structure

```
FocusZen/
├── app/                  # Laravel backend logic
├── public/               # Assets & entry point
├── resources/views/      # Blade frontend templates
├── routes/web.php        # Route definitions
├── .env                  # 🔒 Local configuration (excluded from Git)
├── scripts/                # Python AI integration
│   ├── app.py            # Flask server for motivation
│   └── requirements.txt  # Python dependencies
```

---

## 💬 Feedback & Contributions

We welcome your feedbacks!  
Please open an issue at  
👉 https://github.com/sanodyaJinadasa/-IDEALIZE_Focuszen/issues

---

## 🌐 Live Demo

🚧 _https://sanodya.ravonbakers.lk/_

---

**Stay focused. Stay Zen.** 🌿
