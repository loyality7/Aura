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
