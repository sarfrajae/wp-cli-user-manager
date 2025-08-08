#!/bin/bash

echo "Welcome to WP-CLI User Manager"
echo "Choose an option:"
echo "1. List Users"
echo "2. Create User"
echo "3. Delete User"
echo "4. Change User Role"
echo "5. Reset Password"
read -p "Enter choice [1-5]: " choice

case $choice in
  1)
    wp user list
    ;;
  2)
    read -p "Enter username: " uname
    read -p "Enter email: " email
    read -p "Enter role (subscriber/author/editor): " role
    wp user create "$uname" "$email" --role="$role"
    ;;
  3)
    read -p "Enter user ID to delete: " uid
    wp user delete "$uid"
    ;;
  4)
    read -p "Enter user ID: " uid
    read -p "Enter new role: " role
    wp user update "$uid" --role="$role"
    ;;
  5)
    read -p "Enter user ID: " uid
    read -p "Enter new password: " pass
    wp user update "$uid" --user_pass="$pass"
    ;;
  *)
    echo "Invalid option"
    ;;
esac
