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
