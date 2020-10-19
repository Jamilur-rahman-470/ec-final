<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 3,
                'role_id' => 1,
                'name' => 'admin',
                'email' => 'a@email.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$PXSXqFlk60LBv.OGGFSHaeIH2oBGVRyyBlROqR4uQiQIwP057/Cl.',
                'remember_token' => NULL,
                'settings' => NULL,
                'created_at' => '2020-10-11 10:09:28',
                'updated_at' => '2020-10-11 10:09:28',
            ),
            1 => 
            array (
                'id' => 4,
                'role_id' => 3,
                'name' => 'khaled',
                'email' => 'k@gmail.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$XZRAXbltKpHx3hltOZsZwuocumMz/NKtw2jO6dFXlJIMh3hBappD2',
                'remember_token' => NULL,
                'settings' => NULL,
                'created_at' => '2020-10-12 06:51:15',
                'updated_at' => '2020-10-12 09:53:29',
            ),
            2 => 
            array (
                'id' => 5,
                'role_id' => 2,
                'name' => 'echem',
                'email' => 'e@gmail.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$LzZgnMh01QKlvKIhuWRbVezEyrCJEPPw3ey.0Q.YgcMIJE3VG1k8u',
                'remember_token' => NULL,
                'settings' => NULL,
                'created_at' => '2020-10-12 06:52:20',
                'updated_at' => '2020-10-12 06:52:20',
            ),
        ));
        
        
    }
}