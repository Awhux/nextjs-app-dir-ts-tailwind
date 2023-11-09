/** @type {import('next').NextConfig} */
const nextConfig = {
  analyticsId: process.env.NEXT_PUBLIC_ANALYTICS_ID || '',
  reactStrictMode: true,
  sassOptions: {
    compress: true,
    poweredByHeader: false,
  },
}

module.exports = nextConfig
