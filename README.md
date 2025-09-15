# Xeno Shopify Insights

A multi-tenant Shopify data ingestion and insights service that helps enterprise retailers onboard, integrate, and analyze their customer data.

## Features

- **Multi-tenant Architecture**: Support for multiple Shopify stores with secure data isolation
- **Shopify Integration**: Connect to Shopify APIs to sync products, customers, and orders
- **Data Visualization**: Dashboard with key metrics and charts for business insights
- **User Authentication**: Secure access with email/password and Google OAuth
- **Responsive Design**: Mobile-friendly interface built with Tailwind CSS

## Technology Stack

- **Frontend**: Next.js with TypeScript and Tailwind CSS
- **Backend**: Next.js API routes
- **Database**: PostgreSQL with Prisma ORM
- **Authentication**: NextAuth.js
- **API Integration**: Shopify REST API
- **Deployment**: Vercel

## Getting Started

### Prerequisites

- Node.js 18+ 
- PostgreSQL database
- Shopify Development Store (for testing)

### Local Development

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/xeno-shopify-insights.git
   cd xeno-shopify-insights
   ```

2. Install dependencies
   ```bash
   npm install --legacy-peer-deps
   ```

3. Set up environment variables
   Create a `.env.local` file with the following variables:
   ```
   # Database
   DATABASE_URL="postgresql://username:password@localhost:5432/xeno_shopify"
   
   # NextAuth
   NEXTAUTH_URL=http://localhost:3000
   NEXTAUTH_SECRET=your-secret-key # Generate with `openssl rand -base64 32`
   
   # Google OAuth (optional)
   GOOGLE_CLIENT_ID=your-google-client-id
   GOOGLE_CLIENT_SECRET=your-google-client-secret
   ```

4. Initialize the database
   ```bash
   npx prisma migrate dev
   ```

5. Start the development server
   ```bash
   npm run dev
   ```

6. Open [http://localhost:3000](http://localhost:3000) in your browser

### Deployment to Vercel

The easiest way to deploy this application is through Vercel:

1. Create a Vercel account at [vercel.com](https://vercel.com)

2. Install the Vercel CLI
   ```bash
   npm install -g vercel
   ```

3. Login to Vercel
   ```bash
   vercel login
   ```

4. Deploy the application
   ```bash
   vercel
   ```

5. Set up environment variables in the Vercel dashboard:
   - `DATABASE_URL`: Your PostgreSQL connection string
   - `NEXTAUTH_SECRET`: A secure random string
   - `NEXTAUTH_URL`: Your Vercel app URL (e.g., https://your-app.vercel.app)
   - `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` (if using Google login)

6. Deploy to production
   ```bash
   vercel --prod
   ```

## Database Schema

The application uses a multi-tenant database design with the following main models:

- **Tenant**: Represents a Shopify store account
- **User**: Store administrators and staff members
- **Customer**: Shopify customers synced from the store
- **Product**: Products from the Shopify catalog
- **Order**: Customer orders with related line items
- **Event**: System events like data synchronization

## Architecture

The application follows a multi-tenant architecture where:

1. Each tenant (Shopify store) has isolated data
2. Users are associated with a specific tenant
3. API routes enforce tenant-level data access
4. Shopify API integration syncs data for each tenant separately

## Public Demo

Once deployed, your application will be available at the Vercel URL. You can then create a test account or use the admin account created during setup.

## License

This project is licensed under the MIT License.




<img width="1892" height="934" alt="image" src="https://github.com/user-attachments/assets/432835d1-7332-4010-8ba2-ce5b645431ef" />


<img width="1896" height="905" alt="image" src="https://github.com/user-attachments/assets/8ecfbceb-7bdb-45cc-8f5d-7c7fd3f0d8d2" />

<img width="1878" height="860" alt="image" src="https://github.com/user-attachments/assets/740ec240-afc1-4f31-bb25-99dfc6b0ddb5" />

<img width="817" height="787" alt="image" src="https://github.com/user-attachments/assets/fd6d3807-6246-446e-a997-262df7fba847" />

<img width="1909" height="796" alt="image" src="https://github.com/user-attachments/assets/f8ecdcb9-007e-42c2-b2b0-7ee306fc0776" />

