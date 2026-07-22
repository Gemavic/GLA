/// <reference types="vite/client" />

interface Window {
  dataLayer: unknown[];
  gtag: (...args: unknown[]) => void;
  FlutterwaveCheckout: (config: {
    public_key: string;
    tx_ref: string;
    amount: number;
    currency: string;
    payment_options?: string;
    customer: { email: string; phone_number: string; name: string };
    customizations: { title: string; description: string; logo?: string };
    callback: (response: { status: string; transaction_id: number; tx_ref: string; flw_ref: string }) => void;
    onclose: () => void;
  }) => void;
}
