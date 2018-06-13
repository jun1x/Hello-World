#ifndef GITHUBWORLD_H
#define GITHUBWORLD_H

#include "World.h"

class GitHubWorld : public World
{
    public: 
        ~GitHubWorld();
        virtual void greet();
};

#endif