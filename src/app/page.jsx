import AnimeList from "@/components/AnimeList"
import Header from "@/components/AnimeList/Header"
import { getAnimeResponse, getNestedAnimeResponse, reproduce } from "@/libs/api-libs"


const Page = async () => {
  const topAnime = await getAnimeResponse("top/anime", "limit=8")
  let recommendedAnime = await getNestedAnimeResponse("recommendations/anime", "entry")
  recommendedAnime = reproduce(recommendedAnime, 4)

  return (
    <>
      {/* Most Popular Anime */}
      <section>
        <Header title="Most Popular Anime" LinkTitle="See All" LinkHref="/popular" />
        <AnimeList api={topAnime} />
      </section>
      {/* Anime Recommendations */}
      <section>
        <Header title="Anime Recommendations" />
        <AnimeList api={recommendedAnime} />
      </section>
    </>
  )
}

export default Page