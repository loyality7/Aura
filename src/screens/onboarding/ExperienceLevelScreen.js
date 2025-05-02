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
