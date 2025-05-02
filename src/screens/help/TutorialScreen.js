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
