# flutter_core

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view ourgit
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
  

 

git push https://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@github.com/HeshanSandeepa/CoreFlutter.git

git push https://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@github.com/HeshanSandeepa/CoreFlutter.git


                    val appointmentModels: List<AppointmentModel>?
                    if (mViewType == AppointmentViewType.ACCESS && orders != null) {
                        appointmentModels = mAppointmentController!!.getSlotsForOrder(orders)
                        updateOffset(orders.size)
                    } else {
                        appointmentModels = mAppointmentController
                            ?.getTimeSlotsForAppointment(
                                appointments,
                                mViewType,
                                appointmentViewModel?.day?.value
                            )
                        updateOffset(mAppointmentModels.size)
                    }
                    if (appointmentModels != null) {
                        mAppointmentModels.addAll(appointmentModels)
                    }