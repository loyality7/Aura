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
