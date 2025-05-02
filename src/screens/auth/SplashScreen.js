import React, { useEffect, useRef, useState } from 'react';
import { View, StyleSheet, Animated, Dimensions, Text } from 'react-native';

const { width, height } = Dimensions.get('window');

const PARTICLE_COUNT = 30;

const Particle = ({ delay, duration, startPosition }) => {
  const translateY = useRef(new Animated.Value(0)).current;
  const translateX = useRef(new Animated.Value(0)).current;
  const opacity = useRef(new Animated.Value(0)).current;

  useEffect(() => {
    Animated.loop(
      Animated.sequence([
        Animated.delay(delay),
        Animated.parallel([
          Animated.timing(translateY, {
            toValue: -100,
            duration: duration,
            useNativeDriver: true,
          }),
          Animated.timing(translateX, {
            toValue: 20,
            duration: duration,
            useNativeDriver: true,
          }),
          Animated.sequence([
            Animated.timing(opacity, {
              toValue: 1,
              duration: duration * 0.3,
              useNativeDriver: true,
            }),
            Animated.timing(opacity, {
              toValue: 0,
              duration: duration * 0.7,
              useNativeDriver: true,
            }),
          ]),
        ]),
      ])
    ).start();
  }, []);

  return (
    <Animated.View
      style={[
        styles.particle,
        {
          left: startPosition.x,
          top: startPosition.y,
          opacity,
          transform: [
            { translateX },
            { translateY },
          ],
        },
      ]}
    />
  );
};

const Ring = ({ size, delay }) => {
  const scale = useRef(new Animated.Value(0.8)).current;
  const opacity = useRef(new Animated.Value(0.8)).current;

  useEffect(() => {
    Animated.loop(
      Animated.sequence([
        Animated.delay(delay),
        Animated.parallel([
          Animated.sequence([
            Animated.timing(scale, {
              toValue: 1.1,
              duration: 1500,
              useNativeDriver: true,
            }),
            Animated.timing(scale, {
              toValue: 0.8,
              duration: 1500,
              useNativeDriver: true,
            }),
          ]),
          Animated.sequence([
            Animated.timing(opacity, {
              toValue: 0.2,
              duration: 1500,
              useNativeDriver: true,
            }),
            Animated.timing(opacity, {
              toValue: 0.8,
              duration: 1500,
              useNativeDriver: true,
            }),
          ]),
        ]),
      ])
    ).start();
  }, []);

  return (
    <Animated.View
      style={[
        styles.ring,
        {
          width: size,
          height: size,
          borderRadius: size / 2,
          opacity,
          transform: [{ scale }],
        },
      ]}
    />
  );
};

const SplashScreen = () => {
  const textOpacity = useRef(new Animated.Value(0.7)).current;
  const taglineTranslateY = useRef(new Animated.Value(20)).current;
  const taglineOpacity = useRef(new Animated.Value(0)).current;
  const loadingWidth = useRef(new Animated.Value(0)).current;
  const [particles] = useState(() =>
    Array.from({ length: PARTICLE_COUNT }, () => ({
      delay: Math.random() * 5000,
      duration: Math.random() * 4000 + 3000,
      startPosition: {
        x: Math.random() * width,
        y: Math.random() * height,
      },
    }))
  );

  useEffect(() => {
    // Text pulse animation
    Animated.loop(
      Animated.sequence([
        Animated.timing(textOpacity, {
          toValue: 1,
          duration: 1000,
          useNativeDriver: true,
        }),
        Animated.timing(textOpacity, {
          toValue: 0.7,
          duration: 1000,
          useNativeDriver: true,
        }),
      ])
    ).start();

    // Tagline animation
    Animated.timing(taglineOpacity, {
      toValue: 1,
      duration: 2000,
      delay: 1000,
      useNativeDriver: true,
    }).start();

    Animated.timing(taglineTranslateY, {
      toValue: 0,
      duration: 2000,
      delay: 1000,
      useNativeDriver: true,
    }).start();

    // Loading bar animation
    Animated.sequence([
      Animated.timing(loadingWidth, {
        toValue: 0.2,
        duration: 600,
        useNativeDriver: false,
      }),
      Animated.timing(loadingWidth, {
        toValue: 0.4,
        duration: 600,
        useNativeDriver: false,
      }),
      Animated.timing(loadingWidth, {
        toValue: 0.65,
        duration: 600,
        useNativeDriver: false,
      }),
      Animated.timing(loadingWidth, {
        toValue: 0.85,
        duration: 600,
        useNativeDriver: false,
      }),
      Animated.timing(loadingWidth, {
        toValue: 1,
        duration: 600,
        useNativeDriver: false,
      }),
    ]).start();
  }, []);

  return (
    <View style={styles.container}>
      {/* Gradient Background */}
      <View style={styles.gradientBackground}>
        <View style={styles.gradientOverlay} />
      </View>

      <View style={styles.content}>
        {/* Rings */}
        <Ring size={300} delay={0} />
        <Ring size={250} delay={500} />
        <Ring size={200} delay={1000} />

        {/* Particles */}
        {particles.map((particle, index) => (
          <Particle key={index} {...particle} />
        ))}

        {/* Logo and Text */}
        <Animated.Text style={[styles.text, { opacity: textOpacity }]}>
          AURA
        </Animated.Text>

        {/* Tagline */}
        <Animated.Text
          style={[
            styles.tagline,
            {
              opacity: taglineOpacity,
              transform: [{ translateY: taglineTranslateY }],
            },
          ]}
        >
          ELEVATE YOUR EXPERIENCE
        </Animated.Text>

        {/* Loading Bar */}
        <View style={styles.loadingBar}>
          <Animated.View
            style={[
              styles.loadingProgress,
              {
                width: loadingWidth.interpolate({
                  inputRange: [0, 1],
                  outputRange: ['0%', '100%'],
                }),
              },
            ]}
          />
        </View>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#0f0c29',
  },
  gradientBackground: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: '#0f0c29',
  },
  gradientOverlay: {
    ...StyleSheet.absoluteFillObject,
    backgroundColor: 'transparent',
    borderTopWidth: height,
    borderRightWidth: width,
    borderBottomWidth: 0,
    borderLeftWidth: 0,
    borderTopColor: '#302b63',
    borderRightColor: '#24243e',
    borderStyle: 'solid',
    transform: [{ rotate: '45deg' }],
  },
  content: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  text: {
    fontSize: 80,
    fontWeight: 'bold',
    color: '#FFFFFF',
    letterSpacing: 15,
    textShadowColor: 'rgba(255,255,255,0.5)',
    textShadowOffset: { width: 0, height: 0 },
    textShadowRadius: 30,
  },
  ring: {
    position: 'absolute',
    borderWidth: 5,
    borderColor: 'rgba(255,255,255,0.1)',
  },
  particle: {
    position: 'absolute',
    width: 4,
    height: 4,
    backgroundColor: 'rgba(255,255,255,0.5)',
    borderRadius: 2,
  },
  tagline: {
    position: 'absolute',
    bottom: '20%',
    fontSize: 18,
    color: 'rgba(255,255,255,0.7)',
    letterSpacing: 3,
  },
  loadingBar: {
    position: 'absolute',
    bottom: '10%',
    width: 200,
    height: 3,
    backgroundColor: 'rgba(255,255,255,0.1)',
    borderRadius: 3,
    overflow: 'hidden',
  },
  loadingProgress: {
    height: '100%',
    backgroundColor: '#fff',
  },
});

export default SplashScreen;
