
import Product from '@/components/pages/Product'
import Index from '@/components/pages/Index'
import Admin from '@/components/company/Admin'



export const routes = [
   
    {
        path: '/',
        name: 'Index',
        component: Index
    
        },

    {
        path: '/product',
        name: 'product',
        component: Product
    },
    {
        path: '/admin',
        name: 'Admin',
        component: Admin
    }

]