package com.student_view;

import java.util.Scanner;
import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

public class Main {
    public static void main(String[] args) {
        System.out.println("Welcome to the Student Management System!");

        Scanner scanner = new Scanner(System.in);
        boolean exit = false;

        while (!exit) {
            System.out.println("Select an option:");
            System.out.println("1. Register Student");
            System.out.println("2. Find Student");
            System.out.println("3. Update Student");
            System.out.println("4. Delete Student");
            System.out.println("5. List All Students");
            System.out.println("6. Exit");

            int choice = scanner.nextInt();
            scanner.nextLine(); 

            switch (choice) {
                case 1:
                    redirectTo("Register.jsp");
                    break;
                case 2:
                    redirectTo("Find.jsp");
                    break;
                case 3:
                    redirectTo("Update.jsp");
                    break;
                case 4:
                    redirectTo("Delete.jsp");
                    break;
                case 5:
                    redirectTo("List.jsp");
                    break;
                case 6:
                    exit = true;
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid choice. Please select a valid option.");
            }
        }

        scanner.close();
    }

    
    private static void redirectTo(String page) {
        String url = "http://localhost:8080/StudentMngSys/" + page; 
        System.out.println("Redirecting to " + url);
        try {
            Desktop.getDesktop().browse(new URI(url));
        } catch (IOException | URISyntaxException e) {
            e.printStackTrace();
        }
    }
}
