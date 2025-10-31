import 'package:flutter/material.dart';
import 'package:nti3/features/Home/peresntation/views/widgets/Custom_Home_Appbar.dart';
import '../../../domines/entites/ProductEntity.dart';
import 'CustomBestSalar.dart';
import 'CustomTextFiledForSearch.dart';
import 'ProductsGridview.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<ProductEntity> fakeProducts = [
    ProductEntity(
      id: 1,
      title: "ساعة يد رجالي",
      price: 950.0,
      description: "ساعة أنيقة بتصميم كلاسيكي ومقاومة للماء.",
      category: "إكسسوارات",
      image:
      "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500",
    ),
     ProductEntity(
      id: 2,
      title: "حذاء رياضي",
      price: 1200.0,
      description: "حذاء خفيف ومريح مناسب للجري اليومي.",
      category: "أحذية",
      image:
      "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?w=500",
    ),
     ProductEntity(
      id: 3,
      title: "سماعات بلوتوث",
      price: 450.0,
      description: "سماعات بصوت نقي وعزل ضوضاء ممتاز.",
      category: "إلكترونيات",
      image:
      "https://images.unsplash.com/photo-1585386959984-a41552231693?w=500",
    ),
     ProductEntity(
      id: 4,
      title: "قميص كاجوال",
      price: 350.0,
      description: "قميص قطن 100% بألوان متعددة.",
      category: "ملابس",
      image:
      "https://images.unsplash.com/photo-1589473042200-7b47e01a62d0?w=500",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                const CustomHomeAppbar(),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextFiledForSearch(),
                const SizedBox(
                  height: 12,
                ),

                Custombestsalar(
                  ontap: () {

                  },
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
           ProductsGridview(products:fakeProducts),
        ],
      ),
    );
  }
}
