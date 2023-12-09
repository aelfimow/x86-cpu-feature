#ifdef FEATURES_H
#error Already included.
#else
#define FEATURES_H

extern std::list<std::pair<std::function<bool ()>, std::string>> CreateFeatures();

#endif
