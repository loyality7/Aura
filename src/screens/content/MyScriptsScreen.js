import React from 'react';
import { View, Text, StyleSheet, FlatList } from 'react-native';

const MyScriptsScreen = () => {
  return (
    <View style={styles.container}>
      <Text>My Scripts</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});

export default MyScriptsScreen;
