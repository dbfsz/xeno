#!/bin/bash

# Xeno Shopify Insights Deployment Script

echo "Preparing for deployment..."

# Step 1: Install dependencies
echo "Installing dependencies..."
npm install --legacy-peer-deps

# Step 2: Generate Prisma client
echo "Generating Prisma client..."
npx prisma generate

# Step 3: Build the application
echo "Building the application..."
npm run build

# Step 4: Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null
then
    echo "Vercel CLI not found. Installing..."
    npm install -g vercel
fi

# Step 5: Deploy to Vercel
echo "Deploying to Vercel..."
echo "Please follow the prompts to log in and configure your deployment."
vercel --prod

echo "Deployment completed!"
echo "Your application should now be available at the Vercel URL."
echo "Make sure to configure your environment variables in the Vercel dashboard."