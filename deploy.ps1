# Xeno Shopify Insights Deployment Script for Windows

Write-Host "Preparing for deployment..." -ForegroundColor Cyan

# Step 1: Install dependencies
Write-Host "Installing dependencies..." -ForegroundColor Cyan
npm install --legacy-peer-deps

# Step 2: Generate Prisma client
Write-Host "Generating Prisma client..." -ForegroundColor Cyan
npx prisma generate

# Step 3: Build the application
Write-Host "Building the application..." -ForegroundColor Cyan
npm run build

# Step 4: Check if Vercel CLI is installed
try {
    vercel --version | Out-Null
    $vercelInstalled = $true
} catch {
    $vercelInstalled = $false
}

if (-not $vercelInstalled) {
    Write-Host "Vercel CLI not found. Installing..." -ForegroundColor Yellow
    npm install -g vercel
}

# Step 5: Deploy to Vercel
Write-Host "Deploying to Vercel..." -ForegroundColor Cyan
Write-Host "Please follow the prompts to log in and configure your deployment." -ForegroundColor Yellow
vercel --prod

Write-Host "Deployment completed!" -ForegroundColor Green
Write-Host "Your application should now be available at the Vercel URL." -ForegroundColor Green
Write-Host "Make sure to configure your environment variables in the Vercel dashboard." -ForegroundColor Yellow