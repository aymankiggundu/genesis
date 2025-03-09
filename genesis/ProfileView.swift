import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Profile Picture
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .padding(.top, 50)
                
                // Username
                Text("Username")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                // User Details
                List {
                    HStack {
                        Text("Email:")
                        Spacer()
                        Text("user@example.com")
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Phone:")
                        Spacer()
                        Text("+1234567890")
                            .foregroundColor(.gray)
                    }
                    HStack {
                        Text("Location:")
                        Spacer()
                        Text("City, Country")
                            .foregroundColor(.gray)
                    }
                    
                    // Navigation link to edit profile
                    NavigationLink(destination: EditProfileView()) {
                        Text("Edit Profile")
                    }
                    
                    // Settings section
                    Section(header: Text("Settings")) {
                        NavigationLink(destination: SettingsView()) {
                            Text("Account Settings")
                        }
                        NavigationLink(destination: PrivacySettingsView()) {
                            Text("Privacy Settings")
                        }
                    }
                    
                    // Logout button
                    Button(action: {
                        // Handle logout action
                    }) {
                        Text("Logout")
                            .foregroundColor(.red)
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .padding(.top, 20)
            }
            .navigationTitle("Profile")
        }
    }
}

struct EditProfileView: View {
    var body: some View {
        Text("Edit Profile View")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Account Settings View")
    }
}

struct PrivacySettingsView: View {
    var body: some View {
        Text("Privacy Settings View")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
