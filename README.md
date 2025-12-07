# Jagawarung Monorepo 🏪

A comprehensive business management system for Indonesian small businesses (UMKM) consisting of a Flutter mobile application with voice-first capabilities and a Node.js backend API.

## 📁 Repository Structure

This is a monorepo containing two main submodules:

```
jagawarung-monorepo/
├── backend/              # Node.js/TypeScript backend API
├── mobile/               # Flutter mobile application
├── .gitmodules           # Git submodule configuration
└── update-submodules.sh  # Script to update all submodules
```

## 🚀 Components

### Backend (Node.js/TypeScript)
- **Location**: `backend/` (submodule: [jagawarung-backend](https://github.com/Juara-1/jagawarung-backend.git))
- **Tech Stack**: Node.js, TypeScript, Express, Supabase, OpenAI-compatible AI
- **Purpose**: RESTful API handling business logic, data persistence, and AI integrations
- **Key Features**:
  - Transaction management (earnings, spending, debts)
  - AI agent endpoint with function calling
  - Supabase integration for database and authentication
  - Comprehensive API with proper error handling

### Mobile (Flutter)
- **Location**: `mobile/` (submodule: [jagawarung](https://github.com/Juara-1/jagawarung.git))
- **Tech Stack**: Flutter 3, GetX architecture, Supabase auth, Gemini AI
- **Purpose**: Voice-first POS system for shop management
- **Key Features**:
  - Voice agent for transactions (Sundanese → Javanese → Indonesian)
  - Dashboard with daily summaries
  - Debt management per customer
  - OCR for expense scanning via Kolosal AI
  - Multi-language TTS support

## 🛠️ Tech Stack

### Backend
- **Runtime**: Node.js
- **Language**: TypeScript
- **Framework**: Express.js
- **Database**: Supabase (PostgreSQL)
- **AI**: OpenAI-compatible API (Kolosal AI)
- **Authentication**: Supabase Auth

### Mobile
- **Framework**: Flutter 3
- **State Management**: GetX
- **Architecture**: Clean Architecture
- **HTTP Client**: Dio
- **Speech**: speech_to_text, flutter_tts
- **AI**: Gemini (voice parsing), Kolosal (OCR)
- **Authentication**: Supabase Auth

## 🚀 Getting Started

### Prerequisites
- Node.js (for backend)
- Flutter SDK (for mobile)
- Git (for submodule management)

### 1. Clone the Repository with Submodules

```bash
git clone --recurse-submodules https://github.com/Juara-1/jagawarung-monorepo.git
cd jagawarung-monorepo
```

If you already cloned without submodules:
```bash
git submodule update --init --recursive
```

### 2. Backend Setup

Navigate to the backend directory:
```bash
cd backend
```

Install dependencies:
```bash
npm install
```

Configure environment variables:
```bash
cp .env.example .env
# Edit .env with your Supabase and AI provider credentials
```

Start the development server:
```bash
npm run dev
```

### 3. Mobile Setup

Navigate to the mobile directory:
```bash
cd mobile
```

Install dependencies:
```bash
flutter pub get
```

Configure environment variables:
```bash
# Create .env file in the mobile directory
# Add your API keys (see mobile/README.md for details)
```

Run the application:
```bash
flutter run
```

## 📱 Key Features

### Voice-First Transaction Management
- Siri/Assistant-like mic button for voice commands
- Automatic parsing of earnings, spending, and debts
- Multi-language TTS support with intelligent fallback

### Comprehensive Dashboard
- Daily summaries of income, expenses, and debts
- Recent transaction list
- Interactive voice input with pulse animation

### Debt Management
- Customer-specific debt tracking
- Voice-based debt recording
- Easy repayment tracking with automatic income conversion

### OCR Integration
- Scan shopping receipts via Kolosal AI
- Automatic expense categorization
- Edit and confirm scanned amounts

## 🔌 API Endpoints

### Transaction Management
- `POST /api/agent/transactions` - Voice agent transactions
- `POST /api/transactions?upsert=true` - Create/update transactions
- `POST /api/transactions/{id}/repay` - Mark debt as paid
- `GET /api/transactions` - List transactions with filtering
- `GET /api/transactions/summary` - Get transaction summaries

## 🔄 Updating Submodules

To update all submodules to their latest versions:
```bash
./update-submodules.sh
```

Or manually:
```bash
git submodule update --remote
```

## 🧭 Development Workflow

1. **Backend Changes**: Navigate to `backend/` and make changes
2. **Mobile Changes**: Navigate to `mobile/` and make changes
3. **Commit Strategy**: Commit submodule changes separately from monorepo changes
4. **Testing**: Test backend and mobile independently before integration

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes in the appropriate submodule
4. Test thoroughly
5. Submit a pull request

### Code Style Guidelines
- **Backend**: Follow TypeScript/Node.js best practices
- **Mobile**: 2 spaces indentation, camelCase, comment non-trivial logic only

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🆘 Support

For issues and questions:
- Backend-specific issues: Open in the [backend repository](https://github.com/Juara-1/jagawarung-backend/issues)
- Mobile-specific issues: Open in the [mobile repository](https://github.com/Juara-1/jagawarung/issues)
- Monorepo-specific issues: Open in this repository

## 🌟 Acknowledgments

- Supabase for providing the backend-as-a-service platform
- Gemini AI for voice command processing
- Kolosal AI for OCR capabilities
- Flutter team for the cross-platform framework