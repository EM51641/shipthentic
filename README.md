# Shipthentic

A secure platform for brand signature control and seal verification in shipping logistics. Shipthentic enables brands to digitally sign and track their sealed containers, providing real-time verification of seal integrity and container history throughout the shipping process.

## Features

- Digital signature system for brand authentication
- Seal integrity verification
- Container history tracking
- Real-time seal status monitoring
- Digital key management for authorized access
- Audit trail of all container openings
- Brand-specific access control
- Automated alerts for unauthorized seal breaks

## Technology Stack

- **Backend**: Elixir/Phoenix
- **Database**: PostgreSQL
- **Frontend**: Phoenix LiveView
- **Styling**: Tailwind CSS
- **Containerization**: Docker

## Prerequisites

- Docker and Docker Compose
- Elixir 1.18.4 or later
- Erlang/OTP 27 or later
- PostgreSQL 15 or later

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/shipthentic.git
   cd shipthentic
   ```

2. Set up environment variables:
   ```bash
   cp .env.example .env
   ```
   Edit the `.env` file with your configuration.

3. Start the application using Docker:
   ```bash
   docker-compose up --build
   ```

4. Access the application at `http://localhost:4000`

## Development Setup

1. Install dependencies:
   ```bash
   mix deps.get
   ```

2. Create and migrate the database:
   ```bash
   mix ecto.create
   mix ecto.migrate
   ```

3. Start the Phoenix server:
   ```bash
   mix phx.server
   ```

## Project Structure

```
shipthentic/
├── assets/          # Frontend assets (CSS, JS)
├── config/          # Configuration files
├── lib/            # Application code
│   ├── shipthentic/        # Main application code
│   │   ├── brands/        # Brand signature management
│   │   ├── seals/         # Seal verification system
│   │   └── keys/          # Digital key management
│   ├── shipthentic_web/    # Web interface
│   └── shipthentic.ex      # Application entry point
├── priv/           # Database migrations and static files
└── test/           # Test files
```

## Key Features in Detail

### Brand Signature System
- Digital signatures for brand authentication
- Secure key generation and management
- Multi-factor authentication for brand representatives

### Seal Verification
- Real-time seal status monitoring
- Digital seal registration
- Automated integrity checks
- Historical seal status tracking

### Container History
- Complete audit trail of container movements
- Record of all authorized and unauthorized openings
- Timestamp and location tracking
- Authorized personnel verification

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Security

For security concerns, please email security@shipthentic.com

## Support

For support, please open an issue in the GitHub repository or contact support@shipthentic.com
