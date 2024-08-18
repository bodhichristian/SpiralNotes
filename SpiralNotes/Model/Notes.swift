//
//  Notes.swift
//  SpiralNotes
//
//  Created by christian on 8/18/24.
//

import Foundation
import SwiftData

@Model
final class Note {
    var id: UUID
    var dateCreated: Date
    var title: String?
    var content: String?
    @Relationship var notebook: [Notebook]?
    
    init(
        id: UUID = UUID(),
        dateCreated: Date = .now,
        title: String? = nil,
        content: String? = nil,
        notebook: [Notebook]? = nil
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.notebook = notebook
    }
    
    static var mockData: [Note] = [
        Note(title: "Shopping List", content: """
        - Apples
        - **Milk**
        - Bread
        - Eggs
        - _Butter_
        """),
        
        Note(title: "Meeting Notes", content: """
        **Meeting Date:** 2024-08-18
        _Attendees:_
        - John
        - Mary
        - Sarah
        
        **Agenda:**
        1. Project updates
        2. New hires discussion
        3. **Budget review**
        
        **Next Steps:**
        1. _John_ to prepare budget report by EOD.
        2. **Sarah** to follow up with new hires.
        3. Schedule next meeting.
        """),
        
        Note(title: "To-Do List", content: """
        1. **Finish the SwiftUI project**
        2. _Review code for Stubs app_
        3. Plan the next sprint meeting
        4. Write documentation
        5. **_Test new feature implementation_**
        6. Update README file
        """),
        
        Note(title: "Daily Journal", content: """
        _Woke up early today_, feeling energized and ready to tackle the day. Spent the morning working on the SwiftUI app, made good progress. Later, took a break and went for a walk. The weather was perfect, sunny but not too hot.

        After lunch, **got back to work** and completed the remaining tasks. Feeling accomplished! Ended the day with a movie night. Relaxing and recharging for tomorrow.
        """),
        
        Note(title: "Project Plan", content: """
        **Project Name:** Sticky Notes App
        **Deadline:** 2024-12-31
        
        **_Goals:_**
        1. Implement the core features (creating, editing, and deleting notes).
        2. **Develop a user-friendly UI** using SwiftUI.
        3. Integrate the app with cloud storage.
        4. Test the app thoroughly.
        
        **_Team:_**
        - Lead Developer: _[Your Name]_
        - UI/UX Designer: Sarah
        - QA Engineer: John
        
        **Timeline:**
        - _August:_ Research and design phase
        - **September:** Development phase
        - **October:** Testing and bug fixing
        - **November:** Beta release and feedback collection
        - **December:** Final release
        """),
        
        Note(title: "Recipe", content: """
        **_Pasta Carbonara_**
        
        **Ingredients:**
        - Spaghetti
        - Eggs
        - Pancetta
        - Parmesan cheese
        - Garlic
        - Salt & pepper
        
        **Instructions:**
        1. Cook the spaghetti until al dente.
        2. _Fry the pancetta_ until crispy.
        3. Beat the eggs with Parmesan cheese.
        4. Combine spaghetti with pancetta and garlic.
        5. **Mix in the egg mixture** and stir quickly.
        6. Season with salt and pepper to taste.
        """),
        
        Note(title: "Workout Plan", content: """
        **Weekly Workout Plan:**
        
        **_Monday:_**
        - Warm-up: 10 minutes
        - _Strength training:_ 45 minutes
        - **Cardio:** 20 minutes
        - Cool down: 5 minutes
        
        **Tuesday:**
        - Warm-up: 10 minutes
        - **Yoga:** 60 minutes
        
        **_Wednesday:_**
        - Warm-up: 10 minutes
        - _Strength training:_ 45 minutes
        - **Cardio:** 20 minutes
        - Cool down: 5 minutes
        
        **Thursday:**
        - Rest day
        
        **_Friday:_**
        - Warm-up: 10 minutes
        - _Strength training:_ 45 minutes
        - **Cardio:** 20 minutes
        - Cool down: 5 minutes
        
        **Saturday:**
        - **Hiking:** 2 hours
        
        **_Sunday:_**
        - Rest day or light stretching
        """),
        
        Note(title: "Tech Conference", content: """
        **Event:** SwiftUI Developer Conference
        
        **Date:** 2024-09-15
        
        _Keynote Speakers:_
        - **Tim Cook** – Apple CEO
        - _Chris Lattner_ – Swift creator
        - **Angela Ahrendts** – Former Apple Retail Head
        
        **Sessions:**
        - Introduction to SwiftUI 3.0
        - _Building cross-platform apps with Swift_
        - **Designing with SwiftUI: Best Practices**
        - Using Combine in your apps
        
        **Networking Opportunities:**
        - Meet fellow developers
        - **_Connect with industry leaders_**
        - Explore new career opportunities
        
        **Closing Remarks:** by Tim Cook
        """),
        
        Note(title: "Book Notes", content: """
        **_Book:_** The Pragmatic Programmer
        **_Authors:_** Andrew Hunt, David Thomas
        
        **_Key Takeaways:_**
        - **Be a problem solver**: Don’t just write code, solve problems.
        - **_DRY Principle_**: Don’t Repeat Yourself. Reuse code where possible.
        - _Always aim for high-quality code._ **Cutting corners leads to technical debt.**
        - **Automate** repetitive tasks to save time and reduce errors.
        - **_Stay curious_**: Keep learning and improving your skills.
        - Take ownership of your work. **_Be responsible for the code you write._**
        
        **_Favorite Quote:_**
        "Programmers are craftspeople, and we should all aspire to be master craftsmen." – _Andrew Hunt_
        """)
    ]

}
