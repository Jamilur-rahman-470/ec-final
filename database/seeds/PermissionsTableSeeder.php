<?php

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'browse_admin',
                'table_name' => NULL,
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'browse_bread',
                'table_name' => NULL,
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'browse_database',
                'table_name' => NULL,
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'browse_media',
                'table_name' => NULL,
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'browse_compass',
                'table_name' => NULL,
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'browse_menus',
                'table_name' => 'menus',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'read_menus',
                'table_name' => 'menus',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'edit_menus',
                'table_name' => 'menus',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'add_menus',
                'table_name' => 'menus',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'delete_menus',
                'table_name' => 'menus',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'browse_roles',
                'table_name' => 'roles',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'read_roles',
                'table_name' => 'roles',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'edit_roles',
                'table_name' => 'roles',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'add_roles',
                'table_name' => 'roles',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'delete_roles',
                'table_name' => 'roles',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'browse_users',
                'table_name' => 'users',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'read_users',
                'table_name' => 'users',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'edit_users',
                'table_name' => 'users',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'add_users',
                'table_name' => 'users',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'delete_users',
                'table_name' => 'users',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'browse_settings',
                'table_name' => 'settings',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'read_settings',
                'table_name' => 'settings',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'edit_settings',
                'table_name' => 'settings',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'add_settings',
                'table_name' => 'settings',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'delete_settings',
                'table_name' => 'settings',
                'created_at' => '2020-10-11 10:06:38',
                'updated_at' => '2020-10-11 10:06:38',
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'browse_categories',
                'table_name' => 'categories',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            26 => 
            array (
                'id' => 27,
                'key' => 'read_categories',
                'table_name' => 'categories',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            27 => 
            array (
                'id' => 28,
                'key' => 'edit_categories',
                'table_name' => 'categories',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            28 => 
            array (
                'id' => 29,
                'key' => 'add_categories',
                'table_name' => 'categories',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            29 => 
            array (
                'id' => 30,
                'key' => 'delete_categories',
                'table_name' => 'categories',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            30 => 
            array (
                'id' => 31,
                'key' => 'browse_posts',
                'table_name' => 'posts',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            31 => 
            array (
                'id' => 32,
                'key' => 'read_posts',
                'table_name' => 'posts',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            32 => 
            array (
                'id' => 33,
                'key' => 'edit_posts',
                'table_name' => 'posts',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            33 => 
            array (
                'id' => 34,
                'key' => 'add_posts',
                'table_name' => 'posts',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            34 => 
            array (
                'id' => 35,
                'key' => 'delete_posts',
                'table_name' => 'posts',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            35 => 
            array (
                'id' => 36,
                'key' => 'browse_pages',
                'table_name' => 'pages',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            36 => 
            array (
                'id' => 37,
                'key' => 'read_pages',
                'table_name' => 'pages',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            37 => 
            array (
                'id' => 38,
                'key' => 'edit_pages',
                'table_name' => 'pages',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            38 => 
            array (
                'id' => 39,
                'key' => 'add_pages',
                'table_name' => 'pages',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            39 => 
            array (
                'id' => 40,
                'key' => 'delete_pages',
                'table_name' => 'pages',
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            40 => 
            array (
                'id' => 41,
                'key' => 'browse_hooks',
                'table_name' => NULL,
                'created_at' => '2020-10-11 10:06:39',
                'updated_at' => '2020-10-11 10:06:39',
            ),
            41 => 
            array (
                'id' => 42,
                'key' => 'browse_orders',
                'table_name' => 'orders',
                'created_at' => '2020-10-11 10:13:53',
                'updated_at' => '2020-10-11 10:13:53',
            ),
            42 => 
            array (
                'id' => 43,
                'key' => 'read_orders',
                'table_name' => 'orders',
                'created_at' => '2020-10-11 10:13:53',
                'updated_at' => '2020-10-11 10:13:53',
            ),
            43 => 
            array (
                'id' => 44,
                'key' => 'edit_orders',
                'table_name' => 'orders',
                'created_at' => '2020-10-11 10:13:53',
                'updated_at' => '2020-10-11 10:13:53',
            ),
            44 => 
            array (
                'id' => 45,
                'key' => 'add_orders',
                'table_name' => 'orders',
                'created_at' => '2020-10-11 10:13:53',
                'updated_at' => '2020-10-11 10:13:53',
            ),
            45 => 
            array (
                'id' => 46,
                'key' => 'delete_orders',
                'table_name' => 'orders',
                'created_at' => '2020-10-11 10:13:53',
                'updated_at' => '2020-10-11 10:13:53',
            ),
            46 => 
            array (
                'id' => 47,
                'key' => 'browse_shops',
                'table_name' => 'shops',
                'created_at' => '2020-10-12 08:18:19',
                'updated_at' => '2020-10-12 08:18:19',
            ),
            47 => 
            array (
                'id' => 48,
                'key' => 'read_shops',
                'table_name' => 'shops',
                'created_at' => '2020-10-12 08:18:19',
                'updated_at' => '2020-10-12 08:18:19',
            ),
            48 => 
            array (
                'id' => 49,
                'key' => 'edit_shops',
                'table_name' => 'shops',
                'created_at' => '2020-10-12 08:18:19',
                'updated_at' => '2020-10-12 08:18:19',
            ),
            49 => 
            array (
                'id' => 50,
                'key' => 'add_shops',
                'table_name' => 'shops',
                'created_at' => '2020-10-12 08:18:19',
                'updated_at' => '2020-10-12 08:18:19',
            ),
            50 => 
            array (
                'id' => 51,
                'key' => 'delete_shops',
                'table_name' => 'shops',
                'created_at' => '2020-10-12 08:18:19',
                'updated_at' => '2020-10-12 08:18:19',
            ),
            51 => 
            array (
                'id' => 52,
                'key' => 'browse_products',
                'table_name' => 'products',
                'created_at' => '2020-10-12 11:02:30',
                'updated_at' => '2020-10-12 11:02:30',
            ),
            52 => 
            array (
                'id' => 53,
                'key' => 'read_products',
                'table_name' => 'products',
                'created_at' => '2020-10-12 11:02:30',
                'updated_at' => '2020-10-12 11:02:30',
            ),
            53 => 
            array (
                'id' => 54,
                'key' => 'edit_products',
                'table_name' => 'products',
                'created_at' => '2020-10-12 11:02:30',
                'updated_at' => '2020-10-12 11:02:30',
            ),
            54 => 
            array (
                'id' => 55,
                'key' => 'add_products',
                'table_name' => 'products',
                'created_at' => '2020-10-12 11:02:30',
                'updated_at' => '2020-10-12 11:02:30',
            ),
            55 => 
            array (
                'id' => 56,
                'key' => 'delete_products',
                'table_name' => 'products',
                'created_at' => '2020-10-12 11:02:30',
                'updated_at' => '2020-10-12 11:02:30',
            ),
        ));
        
        
    }
}