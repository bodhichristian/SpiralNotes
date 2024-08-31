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
    
    var color: Color {
        notebook?.color ?? .gray
    }
    
    init(
        id: UUID = UUID(),
        dateCreated: Date = .now,
        title: String = "",
        content: String = "",
        notebook: Notebook? = nil
    ) {
        self.id = id
        self.dateCreated = dateCreated
        self.title = title
        self.content = content
        self.notebook = notebook
    }
    
    static func mockData() -> [Note] {
        return [
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400 * 7),
                title: "Meeting Notes",
                content: "Discussed project timeline and resource allocation. Next steps: finalize budget by Friday."
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400 * 3),
                title: "Shopping List",
                content: "Milk, eggs, bread, apples, chicken, pasta"
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400),
                title: "Book Recommendations",
                content: "1. 'The Hitchhiker's Guide to the Galaxy' by Douglas Adams\n2. '1984' by George Orwell\n3. 'To Kill a Mockingbird' by Harper Lee"
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -3600 * 12),
                title: "Workout Plan",
                content: "Monday: Cardio\nTuesday: Upper body\nWednesday: Rest\nThursday: Lower body\nFriday: Full body\nSaturday: Yoga\nSunday: Rest"
            ),
            
            Note(
                dateCreated: Date(),
                title: "Ideas for App Features",
                content: "1. Dark mode\n2. Cloud sync\n3. Custom tags\n4. Voice notes\n5. Markdown support"
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400 * 10),
                title: "Reflections on Modern Technology",
                content: "The rapid advancement of technology in the 21st century has brought about unprecedented changes in our daily lives. From smartphones to artificial intelligence, we are constantly surrounded by innovations that were once the stuff of science fiction.\n\nWhile these advancements have undoubtedly improved many aspects of our lives, they also present new challenges. Privacy concerns have become increasingly prevalent as we share more of our personal information online. The constant connectivity enabled by mobile devices has blurred the lines between work and personal time, leading to increased stress for many.\n\nOn the other hand, technology has opened up new avenues for learning and communication. Online education platforms have made knowledge more accessible than ever before. Social media, despite its drawbacks, has allowed us to maintain connections with friends and family across vast distances.\n\nAs we move forward, it's crucial that we find a balance between embracing the benefits of technology and mitigating its potential negative impacts. This may involve setting boundaries on our tech usage, being more mindful of our online presence, and ensuring that technological progress aligns with our values and well-being."
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400 * 5),
                title: "The Art of Effective Communication",
                content: "Effective communication is a cornerstone of success in both personal and professional life. It goes beyond mere exchange of information; it's about understanding the emotion and intentions behind the information.\n\nActive listening is a crucial component of effective communication. It involves fully concentrating on what is being said rather than just passively hearing the message of the speaker. This means paying attention to the speaker's body language, tone of voice, and other non-verbal cues.\n\nClear and concise expression is equally important. When conveying your thoughts, be direct and avoid unnecessary jargon. Structure your message in a logical manner to ensure your audience can easily follow your train of thought.\n\nEmpathy plays a significant role in communication. Try to see things from the other person's perspective. This can help in avoiding misunderstandings and in building stronger relationships.\n\nFeedback is another vital aspect. Constructive feedback helps in improving communication and ensures that the message has been correctly understood. Don't hesitate to ask for clarification if something is unclear.\n\nLastly, remember that effective communication is a skill that can be developed with practice. Pay attention to how you communicate in various situations and continuously work on improving your skills."
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400 * 2),
                title: "Exploring Sustainable Living",
                content: "Sustainable living has become increasingly important in our world faced with environmental challenges. It's about making choices that reduce our negative impact on the environment and promote a healthier planet for future generations.\n\nOne key aspect of sustainable living is reducing waste. This can be achieved through practices like recycling, composting, and choosing products with minimal packaging. Many people are adopting a 'zero-waste' lifestyle, aiming to send nothing to landfill.\n\nEnergy conservation is another crucial component. This includes using energy-efficient appliances, improving home insulation, and considering renewable energy sources like solar panels.\n\nTransportation choices also play a significant role in sustainable living. Opting for public transport, cycling, or walking instead of driving can greatly reduce one's carbon footprint. For longer distances, choosing fuel-efficient or electric vehicles can make a difference.\n\nSustainable food choices are gaining popularity. This includes eating more plant-based meals, choosing locally sourced and organic produce, and reducing food waste. Some people are even growing their own vegetables and herbs at home.\n\nWater conservation is often overlooked but is equally important. Simple actions like fixing leaks, using water-efficient appliances, and collecting rainwater can contribute to water conservation efforts.\n\nUltimately, sustainable living is about being mindful of our choices and their impact on the planet. It's a journey of continuous learning and improvement, where small changes can lead to significant positive impacts over time."
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -86400 * 1),
                title: "The Benefits of Regular Exercise",
                content: "Regular exercise is one of the most important things you can do for your health. It offers a wide range of benefits that affect not just your physical well-being, but also your mental and emotional health.\n\nPhysically, exercise helps to improve cardiovascular health, reducing the risk of heart disease and stroke. It also helps in maintaining a healthy weight, which is crucial in preventing a host of health issues including diabetes and certain types of cancer.\n\nStrength training, a key component of a well-rounded exercise routine, helps to build and maintain strong bones and muscles. This is particularly important as we age, helping to prevent conditions like osteoporosis and reducing the risk of falls.\n\nMental health benefits of exercise are equally significant. Regular physical activity has been shown to reduce symptoms of anxiety and depression. It can also improve mood and boost self-esteem.\n\nExercise has cognitive benefits too. It can help improve memory and thinking skills, and may even reduce the risk of cognitive decline and dementia in older adults.\n\nSleep quality is another area positively impacted by regular exercise. People who exercise regularly often report better sleep patterns and feel more energized during the day.\n\nIt's important to remember that you don't need to be a fitness enthusiast to reap these benefits. Even moderate amounts of exercise can make a significant difference. The key is to find activities you enjoy and make them a regular part of your routine."
            ),
            
            Note(
                dateCreated: Date(timeIntervalSinceNow: -3600 * 6),
                title: "The Importance of Financial Literacy",
                content: "Financial literacy is a crucial life skill that is often overlooked in traditional education systems. It encompasses the knowledge and skills necessary to make informed and effective decisions regarding money management.\n\nAt its core, financial literacy involves understanding concepts like budgeting, saving, investing, and managing debt. These skills are essential for achieving financial stability and working towards long-term financial goals.\n\nBudgeting is often the first step in gaining control over one's finances. It involves tracking income and expenses, allowing individuals to understand their spending patterns and make necessary adjustments. A well-planned budget can help in avoiding unnecessary debt and building savings.\n\nSaving is another critical aspect of financial literacy. Understanding the importance of emergency funds and long-term savings can provide financial security and peace of mind. It also opens up opportunities for future investments and major purchases.\n\nInvesting knowledge is increasingly important in today's world. Understanding different investment vehicles, risk assessment, and the power of compound interest can help individuals grow their wealth over time and prepare for retirement.\n\nDebt management is equally crucial. While some forms of debt (like mortgages) can be beneficial, understanding how to avoid high-interest debt and how to pay off existing debts efficiently is key to financial health.\n\nTax knowledge, although often complex, is another important component of financial literacy. Understanding basic tax concepts can help in making informed decisions about income, investments, and deductions.\n\nIn an era of increasingly complex financial products and services, improving financial literacy is more important than ever. It empowers individuals to make sound financial decisions, avoid costly mistakes, and work towards a secure financial future."
            )
        ]
    }
}
