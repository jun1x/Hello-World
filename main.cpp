#include <memory>
#include "GitHubWorld.h"

int main() {
    std::unique_ptr<World> gitHubWorld = std::make_unique<GitHubWorld>();
    gitHubWorld->greet();
}