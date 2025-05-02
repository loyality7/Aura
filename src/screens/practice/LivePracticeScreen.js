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
