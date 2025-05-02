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
