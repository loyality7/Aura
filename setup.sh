#!/bin/bash

# # Colors for terminal output
# RED='\033[0;31m'
# GREEN='\033[0;32m'
# BLUE='\033[0;34m'
# NC='\033[0m'

# # Error handling
# set -e

# # Function to handle errors
# handle_error() {
#     echo -e "${RED}Error: $1${NC}"
#     exit 1
# }

# echo -e "${BLUE}Setting up React Native Android App...${NC}"

# # Check if there's an existing global CLI and remove it
# echo -e "${BLUE}Checking for global react-native-cli...${NC}"
# if npm list -g react-native-cli > /dev/null 2>&1; then
#     echo -e "${BLUE}Removing global react-native-cli...${NC}"
#     npm uninstall -g react-native-cli @react-native-community/cli || handle_error "Failed to uninstall global CLI"
# fi

# # Create new project using the community CLI with a stable version
# echo -e "${GREEN}Creating new React Native project...${NC}"
# npx @react-native-community/cli init Aura  || handle_error "Failed to create project"

# # Navigate into project directory
# cd Aura || handle_error "Failed to enter project directory"
# Install necessary dependencies
echo -e "${GREEN}Installing dependencies...${NC}"
yarn install --save \
    @react-native-async-storage/async-storage \
    react-native-safe-area-context \
    react-native-screens \
    axios || handle_error "Failed to install dependencies"

# Create project structure
echo -e "${GREEN}Creating project structure...${NC}"

# Create directory structure
mkdir -p src/{screens,components,navigation,services,utils,hooks,assets,config,store,types}
mkdir -p src/screens/{auth,practice,feedback,content,social,settings,enterprise,help,onboarding}

# Create screen files
echo -e "${GREEN}Creating screen files...${NC}"

# Auth Screens
cat > src/screens/auth/SplashScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, Image, Animated } from 'react-native';

const SplashScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Speaking Practice App</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default SplashScreen;
EOL

cat > src/screens/auth/OnboardingScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const OnboardingScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Welcome to Speaking Practice</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default OnboardingScreen;
EOL

cat > src/screens/auth/LoginScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, TextInput, TouchableOpacity } from 'react-native';

const LoginScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Login</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default LoginScreen;
EOL

cat > src/screens/auth/RegisterScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, TextInput, TouchableOpacity } from 'react-native';

const RegisterScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Create Account</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default RegisterScreen;
EOL

# Create Onboarding Personalization Screens
echo -e "${GREEN}Creating onboarding personalization screens...${NC}"

cat > src/screens/onboarding/CommunicationGoalsScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const CommunicationGoalsScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>What are your communication goals?</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default CommunicationGoalsScreen;
EOL

cat > src/screens/onboarding/ExperienceLevelScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const ExperienceLevelScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Select your experience level</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default ExperienceLevelScreen;
EOL

cat > src/screens/onboarding/PracticeFrequencyScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const PracticeFrequencyScreen = () => {
  return (
    <View style={styles.container}>
      <Text>How often would you like to practice?</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default PracticeFrequencyScreen;
EOL

cat > src/screens/onboarding/PersonalizationCompleteScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const PersonalizationCompleteScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Perfect! Your experience is now personalized</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default PersonalizationCompleteScreen;
EOL

cat > src/screens/onboarding/ValuePropositionScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const ValuePropositionScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Discover the benefits of Speaking Practice</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default ValuePropositionScreen;
EOL

# Main Screens
cat > src/screens/HomeScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const HomeScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Dashboard</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default HomeScreen;
EOL

# Practice Screens
cat > src/screens/practice/PracticeModeScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const PracticeModeScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Practice Modes</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default PracticeModeScreen;
EOL

cat > src/screens/practice/ScriptLibraryScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const ScriptLibraryScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Script Library</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default ScriptLibraryScreen;
EOL

cat > src/screens/practice/LivePracticeScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const LivePracticeScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Live Practice Session</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default LivePracticeScreen;
EOL

# Feedback Screens
cat > src/screens/feedback/SessionSummaryScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const SessionSummaryScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Session Summary</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default SessionSummaryScreen;
EOL

cat > src/screens/feedback/DetailedAnalysisScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const DetailedAnalysisScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Detailed Analysis</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default DetailedAnalysisScreen;
EOL

# Content Management Screens
cat > src/screens/content/MyScriptsScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const MyScriptsScreen = () => {
  return (
    <View style={styles.container}>
      <Text>My Scripts</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default MyScriptsScreen;
EOL

cat > src/screens/content/ScriptEditorScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, TextInput } from 'react-native';

const ScriptEditorScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Script Editor</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default ScriptEditorScreen;
EOL

# Social Screens
cat > src/screens/social/CommunityScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const CommunityScreen = () => {
  return (
    <View style={styles.container}>
      <Text>Community Hub</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default CommunityScreen;
EOL

cat > src/screens/social/ProfileScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const ProfileScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Profile</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default ProfileScreen;
EOL

# Settings Screens
cat > src/screens/settings/SettingsScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const SettingsScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Settings</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default SettingsScreen;
EOL

cat > src/screens/settings/SubscriptionScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const SubscriptionScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Subscription Plans</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default SubscriptionScreen;
EOL

# Help Screens
cat > src/screens/help/HelpCenterScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const HelpCenterScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Help Center</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default HelpCenterScreen;
EOL

cat > src/screens/help/TutorialScreen.js << EOL
import React from 'react';
import { View, Text, StyleSheet, ScrollView } from 'react-native';

const TutorialScreen = () => {
  return (
    <ScrollView style={styles.container}>
      <Text>Tutorial</Text>
    </ScrollView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default TutorialScreen;
EOL

# Additional Auth Screens
touch src/screens/auth/ValuePropositionScreen.js
touch src/screens/auth/RegistrationOptionsScreen.js
touch src/screens/auth/ForgotPasswordScreen.js
touch src/screens/auth/CommunicationGoalsScreen.js
touch src/screens/auth/ExperienceLevelScreen.js
touch src/screens/auth/PracticeFrequencyScreen.js
touch src/screens/auth/PersonalizationCompleteScreen.js

# Additional Practice Mode Screens
touch src/screens/practice/PracticeCategoryBrowserScreen.js
touch src/screens/practice/ScriptDetailScreen.js
touch src/screens/practice/TeleprompterSettingsScreen.js
touch src/screens/practice/RecordingPreparationScreen.js
touch src/screens/practice/PracticeCountdownScreen.js
touch src/screens/practice/MidPracticePauseScreen.js
touch src/screens/practice/InterviewQuestionScreen.js
touch src/screens/practice/AIInterviewerScreen.js
touch src/screens/practice/IndustrySetupScreen.js
touch src/screens/practice/DebateTopicScreen.js
touch src/screens/practice/DebatePositionScreen.js
touch src/screens/practice/ArgumentConstructionScreen.js
touch src/screens/practice/VoiceModulationScreen.js
touch src/screens/practice/NoiseSimulationScreen.js

# Additional Feedback Screens
touch src/screens/feedback/WordCloudScreen.js
touch src/screens/feedback/FillerWordScreen.js
touch src/screens/feedback/PaceGraphScreen.js
touch src/screens/feedback/ToneJourneyScreen.js
touch src/screens/feedback/GrammarCorrectionScreen.js
touch src/screens/feedback/VocabularyEnhancementScreen.js
touch src/screens/feedback/ComparisonScreen.js
touch src/screens/feedback/AICoachFeedbackScreen.js
touch src/screens/feedback/ShareResultsScreen.js

# Additional Content Management Screens
touch src/screens/content/ScriptCreationStudioScreen.js
touch src/screens/content/ImportContentScreen.js
touch src/screens/content/AIScriptGeneratorScreen.js
touch src/screens/content/ScriptCategoriesScreen.js
touch src/screens/content/TemplateLibraryScreen.js
touch src/screens/content/SharedScriptsScreen.js
touch src/screens/content/ContentTagsScreen.js

# Additional Social & Community Screens
touch src/screens/social/FriendFinderScreen.js
touch src/screens/social/ChallengeCreatorScreen.js
touch src/screens/social/LivePracticeRoomScreen.js
touch src/screens/social/GroupPracticeScreen.js
touch src/screens/social/PeerFeedbackScreen.js
touch src/screens/social/LeaderboardScreen.js
touch src/screens/social/EventCalendarScreen.js
touch src/screens/social/SpeakingClubScreen.js

# Advanced Features Screens
mkdir -p src/screens/advanced
touch src/screens/advanced/VideoRecordingScreen.js
touch src/screens/advanced/BodyLanguageAnalysisScreen.js
touch src/screens/advanced/AICoachConversationScreen.js
touch src/screens/advanced/VRPracticeScreen.js
touch src/screens/advanced/AudienceSimulationScreen.js
touch src/screens/advanced/NightmodeScreen.js
touch src/screens/advanced/CustomAnalysisScreen.js
touch src/screens/advanced/ExpertReviewScreen.js
touch src/screens/advanced/SpeakingStyleScreen.js

# Additional Settings & Account Screens
touch src/screens/settings/ProfileEditorScreen.js
touch src/screens/settings/PaymentMethodsScreen.js
touch src/screens/settings/BillingHistoryScreen.js
touch src/screens/settings/NotificationPreferencesScreen.js
touch src/screens/settings/PrivacyControlsScreen.js
touch src/screens/settings/AppearanceSettingsScreen.js
touch src/screens/settings/AccessibilitySettingsScreen.js
touch src/screens/settings/DataExportScreen.js
touch src/screens/settings/AccountDeletionScreen.js

# Enterprise Screens
mkdir -p src/screens/enterprise
touch src/screens/enterprise/TeamDashboardScreen.js
touch src/screens/enterprise/MemberDirectoryScreen.js
touch src/screens/enterprise/AssignmentCreatorScreen.js
touch src/screens/enterprise/TeamAnalyticsScreen.js
touch src/screens/enterprise/ProgressReportScreen.js
touch src/screens/enterprise/FeedbackDistributionScreen.js
touch src/screens/enterprise/GroupSchedulerScreen.js
touch src/screens/enterprise/ResourceLibraryScreen.js
touch src/screens/enterprise/CustomChallengeScreen.js
touch src/screens/enterprise/ReportingToolsScreen.js

# Additional Help & Support Screens
touch src/screens/help/FeatureDiscoveryScreen.js
touch src/screens/help/VideoTutorialScreen.js
touch src/screens/help/FAQScreen.js
touch src/screens/help/TroubleshootingScreen.js
touch src/screens/help/SupportTicketScreen.js
touch src/screens/help/KnowledgeBaseScreen.js
touch src/screens/help/SpeakingTipsScreen.js
touch src/screens/help/UpdateShowcaseScreen.js

echo -e "${GREEN}Additional screen files created successfully!${NC}"

# Update Navigation
echo -e "${GREEN}Updating navigation...${NC}"

cat > src/navigation/AppNavigator.js << EOL
import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';

// Auth Screens
import SplashScreen from '../screens/auth/SplashScreen';
import OnboardingScreen from '../screens/auth/OnboardingScreen';
import LoginScreen from '../screens/auth/LoginScreen';
import RegisterScreen from '../screens/auth/RegisterScreen';

// Onboarding Screens
import ValuePropositionScreen from '../screens/onboarding/ValuePropositionScreen';
import CommunicationGoalsScreen from '../screens/onboarding/CommunicationGoalsScreen';
import ExperienceLevelScreen from '../screens/onboarding/ExperienceLevelScreen';
import PracticeFrequencyScreen from '../screens/onboarding/PracticeFrequencyScreen';
import PersonalizationCompleteScreen from '../screens/onboarding/PersonalizationCompleteScreen';

// Main Screens
import HomeScreen from '../screens/HomeScreen';
import PracticeModeScreen from '../screens/practice/PracticeModeScreen';
import ScriptLibraryScreen from '../screens/practice/ScriptLibraryScreen';
import LivePracticeScreen from '../screens/practice/LivePracticeScreen';
import SessionSummaryScreen from '../screens/feedback/SessionSummaryScreen';
import DetailedAnalysisScreen from '../screens/feedback/DetailedAnalysisScreen';
import MyScriptsScreen from '../screens/content/MyScriptsScreen';
import ScriptEditorScreen from '../screens/content/ScriptEditorScreen';
import CommunityScreen from '../screens/social/CommunityScreen';
import ProfileScreen from '../screens/social/ProfileScreen';
import SettingsScreen from '../screens/settings/SettingsScreen';
import SubscriptionScreen from '../screens/settings/SubscriptionScreen';
import HelpCenterScreen from '../screens/help/HelpCenterScreen';
import TutorialScreen from '../screens/help/TutorialScreen';

const Stack = createNativeStackNavigator();
const Tab = createBottomTabNavigator();

const MainTabs = () => {
  return (
    <Tab.Navigator>
      <Tab.Screen name="Home" component={HomeScreen} />
      <Tab.Screen name="Practice" component={PracticeModeScreen} />
      <Tab.Screen name="Community" component={CommunityScreen} />
      <Tab.Screen name="Profile" component={ProfileScreen} />
    </Tab.Navigator>
  );
};

const AppNavigator = () => {
  return (
    <NavigationContainer>
      <Stack.Navigator initialRouteName="Splash">
        {/* Auth Stack */}
        <Stack.Screen name="Splash" component={SplashScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Onboarding" component={OnboardingScreen} options={{ headerShown: false }} />
        <Stack.Screen name="Login" component={LoginScreen} />
        <Stack.Screen name="Register" component={RegisterScreen} />

        {/* Onboarding Personalization Stack */}
        <Stack.Screen name="ValueProposition" component={ValuePropositionScreen} options={{ headerShown: false }} />
        <Stack.Screen name="CommunicationGoals" component={CommunicationGoalsScreen} />
        <Stack.Screen name="ExperienceLevel" component={ExperienceLevelScreen} />
        <Stack.Screen name="PracticeFrequency" component={PracticeFrequencyScreen} />
        <Stack.Screen name="PersonalizationComplete" component={PersonalizationCompleteScreen} />

        {/* Main App Stack */}
        <Stack.Screen name="MainTabs" component={MainTabs} options={{ headerShown: false }} />
        <Stack.Screen name="ScriptLibrary" component={ScriptLibraryScreen} />
        <Stack.Screen name="LivePractice" component={LivePracticeScreen} />
        <Stack.Screen name="SessionSummary" component={SessionSummaryScreen} />
        <Stack.Screen name="DetailedAnalysis" component={DetailedAnalysisScreen} />
        <Stack.Screen name="MyScripts" component={MyScriptsScreen} />
        <Stack.Screen name="ScriptEditor" component={ScriptEditorScreen} />
        <Stack.Screen name="Settings" component={SettingsScreen} />
        <Stack.Screen name="Subscription" component={SubscriptionScreen} />
        <Stack.Screen name="HelpCenter" component={HelpCenterScreen} />
        <Stack.Screen name="Tutorial" component={TutorialScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
};

export default AppNavigator;
EOL

echo -e "${GREEN}Screen files created successfully!${NC}"
echo -e "${BLUE}Next steps:${NC}"
echo "1. Update the navigation icons and styling"
echo "2. Implement the screen functionality"
echo "3. Add proper types for navigation"

echo -e "${GREEN}React Native app setup completed successfully!${NC}"
echo -e "${BLUE}Next steps:${NC}"
echo "1. Update config.ts with your actual API URLs"
echo "2. Set up Firebase configuration"
echo "3. Run 'npm run android' to start the app" 