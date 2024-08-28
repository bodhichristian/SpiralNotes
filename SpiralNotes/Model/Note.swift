//
//  Notes.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftUI

@Observable
class Note: Identifiable {
    var id: UUID
    var dateCreated: Date
    var title: String
    var content: String
    var notebook: Notebook?
    var color: Color?
    
    init(
        id: UUID = UUID(),
        dateCreated: Date = .now,
        title: String = "",
        content: String = "",
        notebook: Notebook? = nil,
        color: Color? = nil
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.notebook = notebook
        self.color = color
    }
    
    static var mockData: [Note] = [
        Note(title: "Shopping List", content: """
        - Apples
        - Milk
        - Bread
        - Eggs
        - Butter
        """),
        
        Note(title: "Meeting Notes", content: """
        Meeting Date: 2024-08-18
        Attendees:
        - John
        - Mary
        - Sarah
        
        Agenda:
        1. Project updates
        2. New hires discussion
        3. Budget review
        
        Next Steps:
        1. John to prepare budget report by EOD.
        2. Sarah to follow up with new hires.
        3. Schedule next meeting.
        """),
        
        Note(title: "To-Do List", content: """
        1. Finish the SwiftUI project
        2. Review code for Stubs app
        3. Plan the next sprint meeting
        4. Write documentation
        5. Test new feature implementation
        6. Update README file
        """),
        
        Note(title: "Daily Journal", content: """
        Woke up early today, feeling energized and ready to tackle the day. Spent the morning working on the SwiftUI app, made good progress. Later, took a break and went for a walk. The weather was perfect, sunny but not too hot.

        After lunch, got back to work and completed the remaining tasks. Feeling accomplished! Ended the day with a movie night. Relaxing and recharging for tomorrow.
        """),
        
        Note(title: "Project Plan", content: """
        Project Name: Sticky Notes App
        Deadline: 2024-12-31
        
        Goals:
        1. Implement the core features (creating, editing, and deleting notes).
        2. Develop a user-friendly UI using SwiftUI.
        3. Integrate the app with cloud storage.
        4. Test the app thoroughly.
        
        Team:
        - Lead Developer: [Your Name]
        - UI/UX Designer: Sarah
        - QA Engineer: John
        
        Timeline:
        - August: Research and design phase
        - September: Development phase
        - October: Testing and bug fixing
        - November: Beta release and feedback collection
        - December: Final release
        """),
        
        Note(title: "Recipe", content: """
        Pasta Carbonara
        
        Ingredients:
        - Spaghetti
        - Eggs
        - Pancetta
        - Parmesan cheese
        - Garlic
        - Salt & pepper
        
        Instructions:
        1. Cook the spaghetti until al dente.
        2. Fry the pancetta until crispy.
        3. Beat the eggs with Parmesan cheese.
        4. Combine spaghetti with pancetta and garlic.
        5. Mix in the egg mixture and stir quickly.
        6. Season with salt and pepper to taste.
        """),
        
        Note(title: "Workout Plan", content: """
        Weekly Workout Plan:
        
        Monday:
        - Warm-up: 10 minutes
        - Strength training: 45 minutes
        - Cardio: 20 minutes
        - Cool down: 5 minutes
        
        Tuesday:
        - Warm-up: 10 minutes
        - Yoga: 60 minutes
        
        Wednesday:
        - Warm-up: 10 minutes
        - Strength training: 45 minutes
        - Cardio: 20 minutes
        - Cool down: 5 minutes
        
        Thursday:
        - Rest day
        
        Friday:
        - Warm-up: 10 minutes
        - Strength training: 45 minutes
        - Cardio: 20 minutes
        - Cool down: 5 minutes
        
        Saturday:
        - Hiking: 2 hours
        
        Sunday:
        - Rest day or light stretching
        """),
        
        Note(title: "Tech Conference", content: """
        Event: SwiftUI Developer Conference
        
        Date: 2024-09-15
        
        Keynote Speakers:
        - Tim Cook – Apple CEO
        - Chris Lattner – Swift creator
        - Angela Ahrendts – Former Apple Retail Head
        
        Sessions:
        - Introduction to SwiftUI 3.0
        - Building cross-platform apps with Swift
        - Designing with SwiftUI: Best Practices
        - Using Combine in your apps
        
        Networking Opportunities:
        - Meet fellow developers
        - Connect with industry leaders
        - Explore new career opportunities
        
        Closing Remarks: by Tim Cook
        """),
        
        Note(title: "Book Notes", content: """
        Book: The Pragmatic Programmer
        Authors: Andrew Hunt, David Thomas
        
        Key Takeaways:
        - Be a problem solver: Don’t just write code, solve problems.
        - DRY Principle: Don’t Repeat Yourself. Reuse code where possible.
        - Always aim for high-quality code. Cutting corners leads to technical debt.
        - Automate repetitive tasks to save time and reduce errors.
        - Stay curious: Keep learning and improving your skills.
        - Take ownership of your work. Be responsible for the code you write.
        
        Favorite Quote:
        "Programmers are craftspeople, and we should all aspire to be master craftsmen." – Andrew Hunt
        """)
    ]


}
