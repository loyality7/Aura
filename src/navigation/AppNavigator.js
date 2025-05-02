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
