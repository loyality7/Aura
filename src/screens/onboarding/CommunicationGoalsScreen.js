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
