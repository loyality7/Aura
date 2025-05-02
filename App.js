/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React from 'react';
import {View, StatusBar, useColorScheme, SafeAreaView} from 'react-native';
import {Colors} from 'react-native/Libraries/NewAppScreen';
import SplashScreen from './src/screens/auth/SplashScreen';

function App() {
  const isDarkMode = useColorScheme() === 'dark';

  const backgroundStyle = {
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
    flex: 1,
  };

  return (
    <>
      <StatusBar
        barStyle={isDarkMode ? 'light-content' : 'dark-content'}
        backgroundColor={isDarkMode ? Colors.darker : Colors.lighter}
        translucent={true}
      />
      <SafeAreaView style={backgroundStyle}>
        <View style={backgroundStyle}>
          <SplashScreen />
        </View>
      </SafeAreaView>
    </>
  );
}

export default App; 